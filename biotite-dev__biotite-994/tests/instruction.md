# Issue

**Title:** Speed up `hbond()` by vectorizing bonded hydrogen detection

## Description

`_get_bonded_h()`, used by `hbond()` when the structure has a `BondList`, looped in Python over every donor atom. For single models this loop dominated the runtime.

The loop is replaced by a vectorized filter over `BondList.as_array()` (both bond directions). If a hydrogen were bonded to multiple donors, the original loop kept the highest donor index; `np.maximum.at()` preserves this.

| Input | Before | After | Speedup |
|---|---|---|---|
| `hbond()` 1GYA model 1 (1976 atoms) | 1.55 ms | 0.50 ms | 3.1x |
| `hbond()` 1L2Y model 1 (304 atoms) | 0.37 ms | 0.13 ms | 2.8x |
| `hbond()` 1GYA all 18 models | 5.7 ms | 4.6 ms | 1.2x |

Outputs (triplets, masks, dtypes) checked identical to `main` for 1L2Y, 1GYA, 2AXD, 1O1Z, 1K6P, 1DIX (single model, stack, and selections).

Tests: `tests/structure/test_hbond.py`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.