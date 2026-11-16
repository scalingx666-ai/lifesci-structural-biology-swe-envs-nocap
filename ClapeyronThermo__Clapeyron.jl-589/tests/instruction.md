# Issue

**Title:** Fix type stability in dew/bubble point solvers and ChemPot methods

## Description

The problem was identified with `@code_warntype` while tracing `dew_temperature` on a single-component case.

## Minimal reproducer

```julia
using Clapeyron
using InteractiveUtils

fluid = cPR(["cyclopentane"], idealmodel = ReidIdeal)
z = Clapeyron.SA[1.0]
p = 167855.58754210806
T = 338.1499999998127

method_empty = Clapeyron.ChemPotDewTemperature()

@code_warntype Clapeyron.dew_temperature(fluid, p, z)
@code_warntype Clapeyron.dew_temperature(fluid, p, z, method_empty)
```

## Evidence before the fix

Two separate issues were responsible for the instability.

### 1. Empty `ChemPot*` constructors defaulted to `T = Nothing`

For example, `ChemPotDewTemperature()` constructed a method object with type parameter `Nothing`. That made the stored fields look like this:

```julia
vol0::Union{Nothing,Tuple{Nothing,Nothing}}
x0::Union{Nothing,Vector{Nothing}}
```

This polluted inference in the initialization path. Across the function boundary, the compiler had to treat cases like "x0 may really be a `Vector{Nothing}`" and "vol0 may really be a `Tuple{Nothing,Nothing}`" as live possibilities. That forced `dew_temperature_init(...)` to carry `Nothing`-tainted union types in its inferred return value, which then propagated into local variables such as `vl`, `vv`, `x0`, and the packed state vector `v0`.

### 2. The pure-component fast path returned a different composition container

In the dew and bubble shortcuts for the single-component case, the fourth return value was the input composition itself:

```julia
return (P_sat, v_l, v_v, y)
return (T_sat, v_l, v_v, y)
return (P_sat, v_l, v_v, x)
return (T_sat, v_l, v_v, x)
```

That was inconsistent with the normal branch, which rebuilds and returns the phase composition through the regular solver path. With a static input such as `SVector{1,Float64}`, this also split the return type: the pure fast path returned the original `SVector`, while the normal path returned `Vector{Float64}`. Because the branch condition is only known at run time, the compiler had to infer the fourth return value as `Union{SVector{1,Float64},Vector{Float64}}`, which in turn made the full return tuple type-unstable.

## What was changed

This patch makes two targeted fixes.

### 1. Default `ChemPot*` constructors now use `Float64`

The empty constructors now return:

```julia
ChemPotDewPressure{Float64}()
ChemPotDewTemperature{Float64}()
ChemPotBubblePressure{Float64}()
ChemPotBubbleTemperature{Float64}()
```

This removes the `Nothing`-typed storage from the default initialization path.

### 2. Pure-component fast paths now return the correct phase composition

The four single-component shortcuts now return:

```julia
x = [one(eltype(y))]
y = [one(eltype(x))]
```

This does two things:

- keeps the return shape consistent with the normal branch;
- fixes the dew-path semantics by returning `x` instead of `y`.

No extra `length(y) == 1` or `length(x) == 1` dispatch shortcut was added in this revision.

## Evidence after the fix

The default method objects are now concrete:

```julia
typeof(Clapeyron.ChemPotDewPressure())      == ChemPotDewPressure{Float64}
typeof(Clapeyron.ChemPotDewTemperature())   == ChemPotDewTemperature{Float64}
typeof(Clapeyron.ChemPotBubblePressure())   == ChemPotBubblePressure{Float64}
typeof(Clapeyron.ChemPotBubbleTemperature())== ChemPotBubbleTemperature{Float64}
```

The four top-level APIs now return a single concrete type in the tested single-component case:

```julia
typeof(Clapeyron.dew_pressure(fluid, T, z))
typeof(Clapeyron.dew_temperature(fluid, p, z))
typeof(Clapeyron.bubble_pressure(fluid, T, z))
typeof(Clapeyron.bubble_temperature(fluid, p, z))
```

All four evaluate to:

```julia
Tuple{Float64, Float64, Float64, Vector{Float64}}
```

This confirms that the interface is type-stable for the reproduced case.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43000b39ffc6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.