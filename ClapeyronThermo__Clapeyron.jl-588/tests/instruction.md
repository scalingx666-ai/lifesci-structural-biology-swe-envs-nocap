# Issue

**Title:** Improve pure-component T/P_property type stability

## Description

Consider the following pure component case:
```julia
using Clapeyron

fluid = cPR(["cyclopentane"], idealmodel=ReidIdeal)
const zz = Clapeyron.SA[z[1]]
const p_in = 7761.656554034575

@code_warntype Clapeyron._Tproperty(
    fluid, p_in, h_in, zz, Clapeyron.enthalpy;
    T0 = nothing,
    phase = :vapour,
    threaded = true,
)
```
I found that even though the length of `zz` is encoded in its StaticArray type, the compiler still cannot infer the return type precisely. The return type is inferred as `::Tuple{Any, Symbol}`. See

<details>
<summary>Click to expand the code_warntype results before</summary>

```julia
MethodInstance for Core.kwcall(::@NamedTuple{T0::Nothing, phase::Symbol, threaded::Bool}, ::typeof(Clapeyron._Tproperty), ::PR{ReidIdeal, TwuAlpha, NoTranslation, vdW1fRule}, ::Float64, ::Float64, ::StaticArraysCore.SVector{1, Float64}, ::typeof(enthalpy))
  from kwcall(::NamedTuple, ::typeof(Clapeyron._Tproperty), model::EoSModel, p, prop, z, property::TT) where TT @ Clapeyron ~/Codes/Clapeyron.jl/src/methods/property_solvers/Tproperty.jl:216
Static Parameters
  TT = typeof(enthalpy)
Arguments
  #s67::Core.Const(Core.kwcall)
  @_2::@NamedTuple{T0::Nothing, phase::Symbol, threaded::Bool}
  @_3::Core.Const(Clapeyron._Tproperty)
  model::PR{ReidIdeal, TwuAlpha, NoTranslation, vdW1fRule}
  p::Float64
  prop::Float64
  z::StaticArraysCore.SVector{1, Float64}
  property::Core.Const(Clapeyron.enthalpy)
Locals
  rootsolver::Union{}
  phase::Union{}
  abstol::Union{}
  reltol::Union{}
  T0::Union{}
  verbose::Union{}
  threaded::Union{}
  @_16::Union{Nothing, Roots.Order0, Bool, Float64, Symbol}
Body::Tuple{Any, Symbol}
1 ──       Core.NewvarNode(:(rootsolver))
│          Core.NewvarNode(:(phase))
│          Core.NewvarNode(:(abstol))
│          Core.NewvarNode(:(reltol))
│          Core.NewvarNode(:(T0))
│          Core.NewvarNode(:(verbose))
│          Core.NewvarNode(:(threaded))
│          Core.NewvarNode(:(@_16))
│    %9  = Core.isdefined(@_2, :rootsolver)::Core.Const(false)
└───       goto #3 if not %9
2 ──       Core.Const(:(@_16 = Core.getfield(@_2, :rootsolver)))
└───       Core.Const(:(goto %16))
3 ┄─ %13 = Clapeyron.Roots::Core.Const(Roots)
│    %14 = Base.getproperty(%13, :Order0)::Core.Const(Roots.Order0)
│          (@_16 = (%14)())
│    %16 = @_16::Core.Const(Roots.Order0())
│    %17 = Core.isdefined(@_2, :phase)::Core.Const(true)
└───       goto #5 if not %17
4 ──       (@_16 = Core.getfield(@_2, :phase))
└───       goto #6
5 ──       Core.Const(:(@_16 = :unknown))
6 ┄─ %22 = @_16::Symbol
│    %23 = Core.isdefined(@_2, :abstol)::Core.Const(false)
└───       goto #8 if not %23
7 ──       Core.Const(:(@_16 = Core.getfield(@_2, :abstol)))
└───       Core.Const(:(goto %28))
8 ┄─       (@_16 = 1.0e-15)
│    %28 = @_16::Core.Const(1.0e-15)
│    %29 = Core.isdefined(@_2, :reltol)::Core.Const(false)
└───       goto #10 if not %29
9 ──       Core.Const(:(@_16 = Core.getfield(@_2, :reltol)))
└───       Core.Const(:(goto %34))
10 ┄       (@_16 = 1.0e-15)
│    %34 = @_16::Core.Const(1.0e-15)
│    %35 = Core.isdefined(@_2, :T0)::Core.Const(true)
└───       goto #12 if not %35
11 ─       (@_16 = Core.getfield(@_2, :T0))
└───       goto #13
12 ─       Core.Const(:(@_16 = Clapeyron.nothing))
13 ┄ %40 = @_16::Core.Const(nothing)
│    %41 = Core.isdefined(@_2, :verbose)::Core.Const(false)
└───       goto #15 if not %41
14 ─       Core.Const(:(@_16 = Core.getfield(@_2, :verbose)))
└───       Core.Const(:(goto %46))
15 ┄       (@_16 = false)
│    %46 = @_16::Core.Const(false)
│    %47 = Core.isdefined(@_2, :threaded)::Core.Const(true)
└───       goto #17 if not %47
16 ─       (@_16 = Core.getfield(@_2, :threaded))
└───       goto #18
17 ─       Core.Const(:(@_16 = true))
18 ┄ %52 = @_16::Bool
│    %53 = Base.keys(@_2)::Core.Const((:T0, :phase, :threaded))
│    %54 = (:rootsolver, :phase, :abstol, :reltol, :T0, :verbose, :threaded)::Core.Const((:rootsolver, :phase, :abstol, :reltol, :T0, :verbose, :threaded))
│    %55 = Base.diff_names(%53, %54)::Core.Const(())
│    %56 = Base.isempty(%55)::Core.Const(true)
└───       goto #20 if not %56
19 ─       goto #21
20 ─       Core.Const(:(Base.kwerr(@_2, @_3, model, p, prop, z, property)))
21 ┄ %60 = Clapeyron.:(var"#_Tproperty#393")::Core.Const(Clapeyron.var"#_Tproperty#393")
│    %61 = (%60)(%16, %22, %28, %34, %40, %46, %52, @_3, model, p, prop, z, property)::Tuple{Any, Symbol}
└───       return %61
```

</details>

The issue is that `length(model) == 1` cannot be inferred at compile time. Therefore, the shortcut branch

```julia
if length(z) == 1 && length(model) == 1
```

cannot be selected during inference. As a result, the following mixture-handling logic is also inferred, which pollutes the inferred return type and makes it become `Any`.

After this PR, the code checks `length(z) == 1` first. For `SVector{1}` inputs, this condition can be folded at compile time, so the compiler can enter the pure-component branch directly and skip the mixture-handling logic. The `length(model) == 1` check is still kept as a runtime consistency check. With this change, `_Tproperty` has a stable return type for pure-component cases.

<details>
<summary>Click to expand the code_warntype results after</summary>

```julia
MethodInstance for Core.kwcall(::@NamedTuple{T0::Nothing, phase::Symbol, threaded::Bool}, ::typeof(Clapeyron._Tproperty), ::PR{ReidIdeal, TwuAlpha, NoTranslation, vdW1fRule}, ::Float64, ::Float64, ::StaticArraysCore.SVector{1, Float64}, ::typeof(enthalpy))
  from kwcall(::NamedTuple, ::typeof(Clapeyron._Tproperty), model::EoSModel, p, prop, z, property::TT) where TT @ Clapeyron ~/Codes/Clapeyron.jl/src/methods/property_solvers/Tproperty.jl:216
Static Parameters
  TT = typeof(enthalpy)
Arguments
  #s67::Core.Const(Core.kwcall)
  @_2::@NamedTuple{T0::Nothing, phase::Symbol, threaded::Bool}
  @_3::Core.Const(Clapeyron._Tproperty)
  model::PR{ReidIdeal, TwuAlpha, NoTranslation, vdW1fRule}
  p::Float64
  prop::Float64
  z::StaticArraysCore.SVector{1, Float64}
  property::Core.Const(Clapeyron.enthalpy)
Locals
  rootsolver::Union{}
  phase::Union{}
  abstol::Union{}
  reltol::Union{}
  T0::Union{}
  verbose::Union{}
  threaded::Union{}
  @_16::Union{Nothing, Roots.Order0, Bool, Float64, Symbol}
Body::Tuple{Float64, Symbol}
1 ──       Core.NewvarNode(:(rootsolver))
│          Core.NewvarNode(:(phase))
│          Core.NewvarNode(:(abstol))
│          Core.NewvarNode(:(reltol))
│          Core.NewvarNode(:(T0))
│          Core.NewvarNode(:(verbose))
│          Core.NewvarNode(:(threaded))
│          Core.NewvarNode(:(@_16))
│    %9  = Core.isdefined(@_2, :rootsolver)::Core.Const(false)
└───       goto #3 if not %9
2 ──       Core.Const(:(@_16 = Core.getfield(@_2, :rootsolver)))
└───       Core.Const(:(goto %16))
3 ┄─ %13 = Clapeyron.Roots::Core.Const(Roots)
│    %14 = Base.getproperty(%13, :Order0)::Core.Const(Roots.Order0)
│          (@_16 = (%14)())
│    %16 = @_16::Core.Const(Roots.Order0())
│    %17 = Core.isdefined(@_2, :phase)::Core.Const(true)
└───       goto #5 if not %17
4 ──       (@_16 = Core.getfield(@_2, :phase))
└───       goto #6
5 ──       Core.Const(:(@_16 = :unknown))
6 ┄─ %22 = @_16::Symbol
│    %23 = Core.isdefined(@_2, :abstol)::Core.Const(false)
└───       goto #8 if not %23
7 ──       Core.Const(:(@_16 = Core.getfield(@_2, :abstol)))
└───       Core.Const(:(goto %28))
8 ┄─       (@_16 = 1.0e-15)
│    %28 = @_16::Core.Const(1.0e-15)
│    %29 = Core.isdefined(@_2, :reltol)::Core.Const(false)
└───       goto #10 if not %29
9 ──       Core.Const(:(@_16 = Core.getfield(@_2, :reltol)))
└───       Core.Const(:(goto %34))
10 ┄       (@_16 = 1.0e-15)
│    %34 = @_16::Core.Const(1.0e-15)
│    %35 = Core.isdefined(@_2, :T0)::Core.Const(true)
└───       goto #12 if not %35
11 ─       (@_16 = Core.getfield(@_2, :T0))
└───       goto #13
12 ─       Core.Const(:(@_16 = Clapeyron.nothing))
13 ┄ %40 = @_16::Core.Const(nothing)
│    %41 = Core.isdefined(@_2, :verbose)::Core.Const(false)
└───       goto #15 if not %41
14 ─       Core.Const(:(@_16 = Core.getfield(@_2, :verbose)))
└───       Core.Const(:(goto %46))
15 ┄       (@_16 = false)
│    %46 = @_16::Core.Const(false)
│    %47 = Core.isdefined(@_2, :threaded)::Core.Const(true)
└───       goto #17 if not %47
16 ─       (@_16 = Core.getfield(@_2, :threaded))
└───       goto #18
17 ─       Core.Const(:(@_16 = true))
18 ┄ %52 = @_16::Bool
│    %53 = Base.keys(@_2)::Core.Const((:T0, :phase, :threaded))
│    %54 = (:rootsolver, :phase, :abstol, :reltol, :T0, :verbose, :threaded)::Core.Const((:rootsolver, :phase, :abstol, :reltol, :T0, :verbose, :threaded))
│    %55 = Base.diff_names(%53, %54)::Core.Const(())
│    %56 = Base.isempty(%55)::Core.Const(true)
└───       goto #20 if not %56
19 ─       goto #21
20 ─       Core.Const(:(Base.kwerr(@_2, @_3, model, p, prop, z, property)))
21 ┄ %60 = Clapeyron.:(var"#_Tproperty#393")::Core.Const(Clapeyron.var"#_Tproperty#393")
│    %61 = (%60)(%16, %22, %28, %34, %40, %46, %52, @_3, model, p, prop, z, property)::Tuple{Float64, Symbol}
└───       return %61
```

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af73b09f1dbb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.