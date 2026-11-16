# Issue

**Title:** Speed up `annotate_sse()` by vectorizing contact counting

## Description

`_mask_regions_with_contacts()` (used by `annotate_sse()` to detect short strands) looped in Python over every strand candidate residue and called `distance()` per residue.

Now the cell list is queried once with `CellList.Result.PAIRS`, distances are computed in one vectorized call and contacts are counted with `np.bincount()`.

| Input (`annotate_sse()`, model 1) | Before | After | Speedup |
|---|---|---|---|
| 1IGY (12750 atoms, 4 chains) | 11.0 ms | 1.86 ms | 5.9x |
| 1AKI (1079 atoms) | 1.10 ms | 0.57 ms | 1.9x |
| 1L2Y (304 atoms) | 0.48 ms | 0.48 ms | 1.0x |

Output checked identical to `main` for all 23 structures in `tests/structure/data/pdb` plus a short fragment.

Tests: `tests/structure/test_sse.py`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.