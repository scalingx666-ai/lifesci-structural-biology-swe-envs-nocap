# Issue

**Title:** Adds implicit AD for bubble/dew calculations with gE models

## Description

Add γ-φ implicit AD for bubble/dew of activity/restricted models: new `_activity_bubbledew_ad` (replace `bubbledew_{temperature,pressure}_ad_p`). The new function is used for `PTFlashWrapper` and `RestrictedEquilibriaModel`.

Example:
```julia
using Clapeyron

adgemodel = NRTL(["ethanol", "hexane"]; puremodel=AntoineEqSat)
bpge(T) = first(bubble_pressure(adgemodel,320.0*T,[0.5,0.5]))
Clapeyron.Solvers.derivative(bpge,1.0)
```
This hangs on master, works in this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5681ad005009`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.