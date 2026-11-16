# Issue

**Title:** Fix type instability in pure saturation initialization

## Description

This PR fixes type instability in the pure saturation initialization path that propagates into `bubble_pressure`.

Because the reduced model type does not encode its number of components, Julia must infer both the pure-component fast path and the general mixture path. Imprecise inference in the pure branch can therefore affect `bubble_pressure` even when that branch is not taken at runtime.

The numerical algorithms and results are unchanged; the affected methods (bubble/dew temperature/pressure) now infer concrete return types. (including Case B in #605)

## Changes

### 1. ~Use a positional internal method for `x0_sat_pure_near0`~

*It has been determined that this is not the root cause; the changes have been rolled back in .*

~The internal call in `x0_sat_pure_virial` previously passed `B` and `refine_vl` as keyword arguments:~

```julia
x0_sat_pure_near0(model,T,z,vl;B=B,refine_vl=false)
````

~This call caused `x0_sat_pure_virial` to infer an imprecise return type in the affected call graph.~

> ~The keyword call is semantically valid, and `x0_sat_pure_near0` itself has a concrete return type when inferred independently. However, in the affected recursive call graph, Julia 1.10 fails to propagate that concrete return type through the keyword-dispatch call site. Inference becomes incomplete at this boundary, causing `x0_sat_pure_virial` to receive an imprecise tuple return type.~

~The public keyword interface is retained as a wrapper, while the internal call now uses a positional implementation method:~

```julia
x0_sat_pure_near0(model,T,z,vl,B,false)
```

~This preserves the existing API while restoring inference of:~

```julia
Tuple{Float64,Float64,Float64}
```

### 2. Add generic return-type barriers for `x0_sat_pure_crit`

`x0_sat_pure_crit` returns a concrete three-element numeric tuple when inferred independently, but its return type could degrade to `Tuple{Any,Any,Any}` inside the larger saturation solver call graph.

The results are now asserted as:

```julia
NTuple{3,R}
```

where `R` is obtained with `Base.promote_eltype` from the model, temperature, and critical-point values.

This keeps the code generic for numeric types other than `Float64` while preventing imprecise inference from propagating through `x0_sat_pure`.

### 3. Return the delegated `saturation_pressure` result

When `saturation_model(model)` returned a different model, the previous code called the delegated method but discarded its result:

```julia
satmodel !== model && saturation_pressure(satmodel,T,method)
```

The branch now returns immediately:

```julia
if satmodel !== model
    return saturation_pressure(satmodel,T,method)
end
```

This prevents execution from continuing with the original model after delegation.

## Regression tests

The added tests verify concrete inference for:

```julia
x0_sat_pure_virial(model_r,T)
saturation_pressure(model_r,T,method)
bubble_pressure(system,T,[1.0,0.0])
```

The expected inferred types are:

```julia
NTuple{3,Float64}
NTuple{3,Float64}
Tuple{Float64,Float64,Float64,Vector{Float64}}
```

The test case uses a binary PC-SAFT model reduced to one active component, reproducing the original unstable `bubble_pressure` path.

## Test ordering note

The type-stability tests are intentionally placed before the implicit-AD tests.

On Julia 1.10, executing the Dual-valued `bubble_temperature` or `dew_temperature` path first can cause later Float64 inference to degrade to `Tuple{Any,Any,Any,...}`. If the Float64 path is inferred first, it remains concrete after the Dual path is executed.

This appears to be an inference-order issue in the Julia compiler rather than a Clapeyron state or cache mutation. I plan to prepare a separate minimal reproducer and report it to the Julia repository.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58fa87b4b336`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.