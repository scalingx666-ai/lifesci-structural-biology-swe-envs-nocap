# Issue

**Title:** AD over PT properties with activity models and eos as pure model

## Description

This now works (again?):
```
using Clapeyron

fluid = NRTL(["butan-1-ol", "propan-2-ol", "water"]; puremodel=PR)

h = enthalpy(fluid, 1e5, 300., [1.,1.,1.])
∂h∂p = Clapeyron.Solvers.derivative(_x -> enthalpy(fluid, _x, 300., [1.,1.,1.]), 1e5)
∂h∂T = Clapeyron.Solvers.derivative(_x -> enthalpy(fluid, 1e5, _x, [1.,1.,1.]), 300.)
∂h∂x = Clapeyron.Solvers.derivative(_x -> enthalpy(fluid, 1e5, 300., [_x,1.,1.]), 1.)
```
The changes in `StaticForwardDiffTags.jl` and `differentials.jl` were suggested by Claude. I don't fully understand them, please check them carefully.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `63eb1a272228`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.