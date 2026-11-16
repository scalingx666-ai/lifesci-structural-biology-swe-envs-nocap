# Issue

**Title:** assertions on bubble and dew methods

## Description

Right now on the current master the following will work: 

```julia
julia> fluid = cPR(["propane","butane"],idealmodel = ReidIdeal);

julia> dew_pressure(fluid,300,[-1.0,-1.0])
(419532.51468221226, 9.425412399118093e-5, 0.005381927572594918, [0.23045864442659386, 0.7695413555734061])

julia> bubble_pressure(fluid,300,[-1.0,-1.0])
(616739.3091409293, 9.119630290487429e-5, 0.0035439539481169325, [0.7638732923229267, 0.23612670767707333])

julia> dew_temperature(fluid,101325,[-1.0,-1.0])
(259.48526253581366, 8.72014003143659e-5, 0.02060903027567341, [0.1697465030711994, 0.8302534969288006])

julia> bubble_temperature(fluid,101325,[-1.0,-1.0])
(243.57121051036148, 8.001888236157625e-5, 0.019359255042491082, [0.8516663757619187, 0.14833362423808133])
```

It allows the computations when moles are negative. This is not physically possible. and can return `NaN` values as there are steps which do `x/sum(x)`

```julia
julia> bubble_temperature(fluid,101325,[-1.0,1.0])
ERROR: index reduction resulted in an empty model.
```

Hence this PR puts assertions so that the input moles are positive.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1689ee6e7bad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.