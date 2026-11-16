# Issue

**Title:** Add Symbolics extension.

## Description

This PR add a Symbolics.jl extension to Clapeyron. we make a bunch of AD functions Symbolics-compatible. this allows us to pass Symbolic Variables into any (VT) bulk property and obtain a symbolic expression corresponding the evaluation of an specific eos at (V,T,z)::Symbolic conditions. one simple example:
```julia
using Clapeyron, Symbolics
id = BasicIdeal(String[])
@variables V0,T0
Cp0 = Clapeyron.VT_heat_capacity(id,V0,T0) |> simplify #will return 2.5*Clapeyron.R̄ = 20.7861565453831

model = PR(["water"])
Cp1 = Clapeyron.VT_heat_capacity(model ,V0,T0)
```
Cp1 results in this expression:
```
-T0*(16.62892523630648(-1.5 / T0 + (-92960.21285969102((1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))^2)*(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / (69.13028862866763(T0^2)) + (-30.127131579940517(1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))*(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / (16.62892523630648T0*sqrt(0.0015452845641524887T0))) + (-((8.31446261815324(-1 / V0 + -1.911344060945553e-5 / ((V0^2)*(1 + -1.911344060945553e-5 / V0)) + (11180.543725908146(4.614392754296021e-5 / ((V0^2)*(1 + 4.614392754296021e-5 / V0)) + (-(-7.917046324049157e-6 / (V0^2))) / (1 + -7.917046324049157e-6 / V0))*((1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))^2)) / (8.31446261815324T0)) + 8.31446261815324T0*((-30.127131579940517(1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))*(4.614392754296021e-5 / ((V0^2)*(1 + 4.614392754296021e-5 / V0)) + (-(-7.917046324049157e-6 / (V0^2))) / (1 + -7.917046324049157e-6 / V0))) / (16.62892523630648T0*sqrt(0.0015452845641524887T0)) + (-92960.21285969102(4.614392754296021e-5 / ((V0^2)*(1 + 4.614392754296021e-5 / V0)) + (-(-7.917046324049157e-6 / (V0^2))) / (1 + -7.917046324049157e-6 / V0))*((1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))^2)) / (69.13028862866763(T0^2))))^2)) / (8.31446261815324T0*(1 / (V0^2) + (11180.543725908146((-7.917046324049157e-6 / (V0^2))*((-(-7.917046324049157e-6 / (V0^2))) / ((1 + -7.917046324049157e-6 / V0)^2)) + (2V0*(-7.917046324049157e-6 / (V0^4))) / (1 + -7.917046324049157e-6 / V0) - (4.614392754296021e-5 / ((V0^4)*((1 + 4.614392754296021e-5 / V0)^2)))*(2V0*(1 + 4.614392754296021e-5 / V0) - (V0^2)*(4.614392754296021e-5 / (V0^2))))*((1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))^2)) / (8.31446261815324T0) - (-1.911344060945553e-5 / ((V0^4)*((1 + -1.911344060945553e-5 / V0)^2)))*(2V0*(1 + -1.911344060945553e-5 / V0) - (V0^2)*(-1.911344060945553e-5 / (V0^2))))) + 8.31446261815324T0*(1.5 / (T0^2) + (0.04059033618963488(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / (33.25785047261296T0*(sqrt(0.0015452845641524887T0)^2)) 
+ (250.4909093135994(1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))*(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / 
(138.26057725733526(T0^2)*sqrt(0.0015452845641524887T0)) - ((0.025696421486110177T0) / (2sqrt(0.0015452845641524887T0)) + 16.62892523630648sqrt(0.0015452845641524887T0))*((-30.127131579940517(1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))*(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / (276.5211545146705(T0^2)*(sqrt(0.0015452845641524887T0)^2))) - 138.26057725733526T0*((-92960.21285969102((1 + 0.8718793619199999(1 - sqrt(0.0015452845641524887T0)))^2)*(log1p(-7.917046324049157e-6 / V0) - log1p(4.614392754296021e-5 / V0))) / (4778.996805882893(T0^4)))))
```
This is, of course, the result of combinatorial explosion, a phenomena that affects calculation of Symbolic derivatives, but it is still the exact expression for the calculation of Cp(V,T) using Peng-Robinson.

Some things are not supported. notably:
- Julia versions before 1.9 (this PR uses pkg extensions to avoid adding Symbolics as an inconditional dependency)
- the association solver (with multiple association sites, because we solve single association pairs analitically, those are supported)
- any comparison that depends on (V,T,z) (checks like V < V0, for example, are broken. but we do few of those
- volume calculations
- single and multicomponent phase equilibria.

For work on Symbolic EoS, i suppose that instead of solving single and multicomponent phase equilibria in the library, the system handling the generated expressions is the one in charge of solving the equilibrium conditions. This PR is a step on addressing #186.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `86b846431f0d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.