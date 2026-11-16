# Issue

**Title:** Speed up `check_duplicate_atoms()`

## Description

`check_duplicate_atoms()` compared every atom with all preceding atoms in a Python loop, i.e. O(n²) array comparisons.

This PR maps each annotation array to integer codes via `np.unique(return_inverse=True)` and then finds the first occurrence of each unique code row with `np.unique(axis=0, return_index=True)`. All other atoms are duplicates.
`equal_nan=False` keeps the previous behavior that `NaN` annotation values never compare equal.

| Input | Before | After | Speedup |
|---|---|---|---|
| 1l2y (304 atoms) | 2.49 ms | 0.23 ms | 11x |
| 1aki (1079 atoms) | 11.98 ms | 0.49 ms | 24x |
| 1gya (1976 atoms) | 27.63 ms | 1.01 ms | 27x |

The returned indices are identical to before (checked on 1l2y/1aki/1gya with random duplicated atoms and `NaN` annotations, as well as on a stack).
One minor difference: if no duplicates are found, the returned empty array now has an integer dtype (as documented) instead of `float64`.

Tests run: `tests/structure/test_integrity.py`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.