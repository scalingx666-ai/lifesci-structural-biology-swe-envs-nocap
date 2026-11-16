# Issue

**Title:** Adds registering for `_res` properties to SymbolicsExt

## Description

```julia
using Clapeyron, Symbolics

model = PCSAFT("water")

ar = helmholtz_energy_res(model, p, T) # worked before, but output was very long symbolic expression, now similar to helmholtz_energy(model, p, T)
sr = entropy_res(model, p, T) # errored before, now fixed
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62c89f55ad08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.