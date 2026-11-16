# Issue

**Title:** Support for incipient phases in `MichelsenTPFlash`/  `RRTPFlash` and an API to handle incipient phases

## Description

MWE:

```julia
using Clapeyron

model = PR(["n-Propane", "n-Butane", "n-Pentane"])

p = 1.6005646620614817e6  # Pa
T = 329.8433241022147     # K
z = [
    0.5387358764517459,
    0.41587305276545855,
    0.04539107078279546,
]

r = Clapeyron.tp_flash2(model, p, T, z)
x,y = r.compositions
K = y ./ x
println("β = $(r.fractions)")
println("K = $K")
```

Before:
```
β = [0.9999999999999999, 0.0]
K = [1.0, 1.0, 1.0]
```
After
```
β = [0.9999999999999999, 0.0]
K = [1.3817775741155964, 0.5867762314134223, 0.25472906234541176]
```

The values of the active phase are unchanged, but the inactive ("incipient") phase carries the information about the converged composition.

This PR also adds new tools to handle phases with zero-phase fractions
- `numphases(result,true)` will return the amount of *active* phases. it will return zero if the flash result errored.
- `is_active_phase(result,i::Int)` returns a boolean indicating if the phase is active or not. (positive phase fraction and valid conditions)
- `each_active_phase_index` returns an iterator over all active phases.

The handling of incipient phases is documented in the methods that support it (`RRTPFlash`, `MichelsenTPFlash`).

 

cc @zvolensky

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3586f3f9b868`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.