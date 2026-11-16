# Issue

**Title:** Speed up `Feature.get_location_range()` and thus feature sorting

## Description

`Feature.get_location_range()` used `np.min()`/`np.max()` on a Python list of the (usually one or two) location bounds, where the array conversion dominates.
This method is called twice per comparison in `Feature.__lt__()`/`__gt__()`, so it dominates `sorted(annotation)`, which in turn dominates `genbank.set_annotation()` and `gff.set_annotation()`.
Now built-in `min()`/`max()` are used, so the bounds are returned as native Python integers.

| Input (`ec_bl21.gb`, 8870 features) | Before | After | Speedup |
|---|---|---|---|
| `get_location_range()` for all features | 40.8 ms | 7.4 ms | 5.5x |
| `sorted(annotation)` | 809 ms | 375 ms | 2.2x |
| `genbank.set_annotation()` | 861 ms | 197 ms | 4.4x |

Tests run: `tests/sequence/test_annotation.py`, `test_genbank.py`, `test_gff.py`, doctests of `biotite.sequence`; additionally checked that `get_location_range()` results and `sorted()` order are identical to `main` for all features of `ec_bl21.gb`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.