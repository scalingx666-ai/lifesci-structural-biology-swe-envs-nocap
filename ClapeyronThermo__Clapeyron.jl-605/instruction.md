# Issue

**Title:** Fix bubble/dew chempot type instability

## Description

```julia
using Clapeyron
# Case A
model = PR(["ethanol", "water"])
@code_warntype bubble_pressure(model, 300., [1., 0.])

# Case B
system1 = PCSAFT(["methanol", "cyclohexane"])
@code_warntype Clapeyron.bubble_pressure(system1, 313.15, [1., 0.])
```

PR#603 only fixes part of the type instability, these functions (e.g. `bubble_pressure`) still return `NTuple{4,Any}`.
This PR fixes the stability of return value types for **Case A**.
Now they return:
```
dew_pressure_impl -> Tuple{Float64, Float64, Float64, Vector{Float64}}
dew_pressure -> Tuple{Float64, Float64, Float64, Vector{Float64}}
dew_temperature_impl -> Tuple{Float64, Float64, Float64, Vector{Float64}}
dew_temperature -> Tuple{Float64, Float64, Float64, Vector{Float64}}
```

Regression test added.


## Cause

To put it simply, since the type value of `ForwardDiff.Chunk{min(length(v0), 8)}` in the following function is dynamically calculated, the return value is inferred to be `Any`, polluting all downstream type inferences. I made a function barrier in this PR.
```julia
    r = Solvers.nlsolve(f!, v0,
        LineSearch(Newton2(v0),BoundedLineSearch(lb,ub)),
        NLSolvers.NEqOptions(method),
        ForwardDiff.Chunk{min(length(v0), 8)}()
    )
```

ForwardDiff.jl has related issues. They have discovered that dynamic calculation of Chunk will lead to type instability, which is almost impossible to solve (dynamic and specialization are always opposites). Function barriers are a reasonable solution.

## Note

**Case B** still exhibits type instability; specifically, the PC-SAFT model triggers type instability when calculating `saturation_pressure`, whereas the PR model does not. I am still investigating the issue.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `93c6ecdcc69e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.