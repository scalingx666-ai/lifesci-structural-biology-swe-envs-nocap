# Issue

**Title:** Fix detection of real cubic roots

## Description

Thank you for this great package!

I encountered the following behaviour when looking at CO2 with a cubic equation of state:
```julia
julia> system = EPPR78(["carbon dioxide"]);

julia> Clapeyron.volume(system , 3311.0u"bar", 400.0u"K")
ERROR: UndefVarError: `vl` not defined
Stacktrace:
 [1] volume_impl(model::PR{…}, p::Float64, T::Float64, z::SVector{…}, phase::Symbol, threaded::Bool, vol0::Nothing)
   @ Clapeyron ~/.julia/packages/Clapeyron/JJGLA/src/models/cubic/equations.jl:269
 [2] volume(model::PR{…}, p::Float64, T::Float64, z::SVector{…}; phase::Symbol, threaded::Bool, vol0::Nothing)
   @ Clapeyron ~/.julia/packages/Clapeyron/JJGLA/src/methods/property_solvers/volume.jl:118 [inlined]
 [3] volume(model::PR{…}, p::Quantity{…}, T::Quantity{…}, z::SVector{…}; phase::Symbol, output::Unitful.FreeUnits{…})
   @ Clapeyron ~/.julia/packages/Clapeyron/JJGLA/src/methods/unitful_methods.jl:58 [inlined]
 [4] volume(model::PR{…}, p::Quantity{…}, T::Quantity{…}, z::SVector{…})
   @ Clapeyron ~/.julia/packages/Clapeyron/JJGLA/src/methods/unitful_methods.jl:55 [inlined]
 [5] top-level scope
   @ REPL[3]:1
Some type information was truncated. Use `show(err)` to see complete types.
```

Arguably worse, for a slightly different pressure, there is no error but the answer is obviously wrong (the volume is negative):

```julia
julia> Clapeyron.volume(system , 3363.1u"bar", 400.0u"K")
-5.070066466695018e-5 m^3
```

After investigating, it turns out that this is due to a faulty heuristic used to determine which roots of a cubic polynomial are real. This PR implements a cleaner heuristic that checks the value of the polynomial between the real parts of the roots, and compares the sign of these values to determine more precisely whether the roots are real. This yields more satisfying answers:
```julia
julia> Clapeyron.volume(system , 3311.0u"bar", 400.0u"K")
3.363139140634349e-5 m^3

julia> Clapeyron.volume(system , 3363.1u"bar", 400.0u"K")
3.3545657072357283e-5 m^3
```

~And as a bonus, it seems that this bugfix incidentally makes the test for  pass (whereas it was marked as `@test_broken`).~

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `45724c31db57`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.