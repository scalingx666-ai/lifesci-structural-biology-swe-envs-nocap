# Issue

**Title:** Fix ∂lnγ∂T for models with lnγ_impl!

## Description

Fixes
```
using Clapeyron

model_cosm = COSMOSAC02(["water", "ethanol"]; puremodel=PR)
Clapeyron.∂lnγ∂T(model_cosm, 1e5, 300., [1.,1.])
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2a2027def8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.