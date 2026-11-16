# Issue

**Title:** Multiphase TP‑flash: fix empty‑TPD crash, handle K≈1 degeneracy, robust…

## Description

…split init, add TPD tolerance, and debug logs; plus assorted bug fixes

## Summary
This PR hardens MultiPhaseTPFlash against several edge cases that caused crashes or NaNs, especially near phase boundaries. It also adds optional debug logging for diagnosis.

## Key fixes and improvements

### No-candidate TPD (full_tpd) fallback

Avoids “reducing over an empty collection” by falling back to single‑phase init when no unstable phase is found.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:222

### Robust phase-splitting from TPD

β2 upper bound: ignore wi==0 components to avoid 0/0 and Inf (uses zip(z,w)).
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:1032
β2≈1 degeneracy: if β2==1 or near 1, set x2 = z to avoid division by zero; sanitize x2 (finite, nonnegative, renormalized).
Files: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:1040, 1045
Volume fallbacks: if hinted phase volume returns NaN, recompute without phase hint.
Files: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:1050–1055, 1069–1072

### Safer SS initialization and iteration

lnK init: avoid 0/0 by setting log(0/0) → 0 (Ki=1) per component.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:359–372
Added SS iteration diagnostics for NaN in β, compositions, or volumes.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:373–377, 390–399

### Rachford–Rice (np==2) degeneracy guard using log‑K norm

Detects trivial K (multiplicatively close to 1) via __log_K_norm and reuses/clamps previous β instead of calling RR (which returns NaN at degeneracy).
File (guard): src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:505–520
Helper ref: src/methods/property_solvers/multicomponent/rachford_rice.jl:422
Keeps logs for K≈1 decisions and clamping.

### TPD tolerance to avoid borderline splits

Treats extremely small negative tpd as numerically zero to avoid degenerate phase splits near stability boundary (default tol=1e‑12).
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:813
See this case:
```
p = 505777.32016068726
t = 323.9598978773458
n = [75.83064821431964, 6.148759359393775e-10, 0, 0]
res = Clapeyron.tp_flash2(mix, p, t, n, MultiPhaseTPFlash(full_tpd=true))
```

### Phase bookkeeping and cleanup

Final duplicate/degenerate phase consolidation before return.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:315–320
Fixes for vapour index assignment and ref comparisons.
Files: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:216, 847–849, 1006–1011
LLE search gating: only restrict to LLE once both vapour and at least one liquid phase exist.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:774–777

### Safer defaults and type handling

Single-phase init uses Vector{TT}(z) (typed copy); removed redundant normalization since z is already normalized.
Files: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:226, 251
Use keyword constructor in index_reduction(::MultiPhaseTPFlash, ...) to avoid eltype(K0) on nothing.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:117
Guard initial_beta! against empty comps with a friendly error.
File: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:1175

### Improved TPD usage

Default to strategy=:default (includes Wilson and pure) in full_tpd first pass; this is more robust near boundaries.
Files: src/methods/property_solvers/multicomponent/tp_flash/multiphase.jl:223, 775

### Debugging

Enable verbose diagnostics by setting ENV["CLAPEYRON_MPFLASH_DEBUG"]="1".
Key logs include:
TPD candidates and min_tpd with tol
Split results (β1/β2/dgi, x1/x2 sums, v1/v2)
SS init lnK sanity; per-iteration NaN detection
RR β decisions (logK≈0 reuse, solver invalid/clamp)
Volume fallbacks when phase hint fails

## Behavioral changes

Returns single phase in “numerical-noise negative tpd” cases (min_tpd > −1e−12).
Eliminates duplicate phases in final result if K≈1 keeps phases identical.
More robust handling of near‑boundary cases avoids NaNs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f5e07fe6e1b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.