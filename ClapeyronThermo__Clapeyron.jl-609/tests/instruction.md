# Issue

**Title:** Fix typo in `Pproperty_pure()`

## Description

There was a typo in the `Pproperty_pure()` method causing this error:

```julia
using Clapeyron
using Clapeyron: QT, TS

fluid = "water"
model = SingleFluid(fluid)

Tc = model.properties.Tc
s = QT.entropy(model, 1.0, Tc)
TS.pressure(model, Tc+1.0, s)

UndefVarError: `P0` not defined in `Clapeyron`
Suggestion: check for spelling errors or missing imports.

Stacktrace:
  [1] Pproperty_pure(model::SingleFluid{…}, T::Float64, x::Float64, z::StaticArraysCore.SVector{…}, property::typeof(entropy), rootsolver::Roots.Order0, phase::Symbol, abstol::Float64, reltol::Float64, verbose::Bool, threaded::Bool, p0::Nothing)
    @ Clapeyron ~/repos/Clapeyron.jl/src/methods/property_solvers/Pproperty.jl:321
  [2] _Pproperty(model::SingleFluid{…}, T::Float64, prop::Float64, z::StaticArraysCore.SVector{…}, property::typeof(entropy); rootsolver::Roots.Order0, phase::Symbol, abstol::Float64, reltol::Float64, p0::Nothing, verbose::Bool, threaded::Bool)
    @ Clapeyron ~/repos/Clapeyron.jl/src/methods/property_solvers/Pproperty.jl:128
  [3] _Pproperty
    @ ~/repos/Clapeyron.jl/src/methods/property_solvers/Pproperty.jl:110 [inlined]
  [4] #Pproperty#398
    @ ~/repos/Clapeyron.jl/src/methods/property_solvers/Pproperty.jl:97 [inlined]
  [5] Pproperty
    @ ~/repos/Clapeyron.jl/src/methods/property_solvers/Pproperty.jl:86 [inlined]
  [6] TS_property
    @ ~/repos/Clapeyron.jl/src/methods/XY_methods/TS.jl:10 [inlined]
  [7] #pressure#3
    @ ~/repos/Clapeyron.jl/src/methods/XY_methods/TS.jl:50 [inlined]
  [8] pressure
    @ ~/repos/Clapeyron.jl/src/methods/XY_methods/TS.jl:49 [inlined]
  [9] pressure(model::SingleFluid{EmpiricAncillary}, T::Float64, s::Float64)
    @ Clapeyron.TS ~/repos/Clapeyron.jl/src/methods/XY_methods/TS.jl:49
 [10] top-level scope
    @ In[2]:9
 [11] eval(m::Module, e::Any)
    @ Core ./boot.jl:489
Some type information was truncated. Use `show(err)` to see complete types.
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `98388b5d63e5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.