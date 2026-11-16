# Issue

**Title:** Speed up GRO file reading

## Description

`GROFile.get_structure()` parsed each atom line in a Python loop and assigned every value individually into NumPy arrays (7 scalar `__setitem__` calls per atom). In addition, `_is_int()` (used by `get_structure()` and `get_model_count()` to find model starts) raised and caught a `ValueError` for every atom line.

Fix:
- Parse annotation and coordinate columns with list comprehensions and assign each column at once.
- `_is_int()` returns `False` early for lines containing a `.`, which `int()` can never parse (all atom and box lines), avoiding exception handling.

Results are identical (values and dtypes checked against `main`).

| Input | Function | before | after | speedup |
|---|---|---|---|---|
| `1aki.gro` (1k atoms) | `get_structure(model=1)` | 3.23 ms | 1.18 ms | 2.7x |
| `1l2y.gro` (38 models x 304 atoms) | `get_structure()` | 0.99 ms | 0.41 ms | 2.4x |
| `1igy.gro` | `get_structure(model=1)` | 37.5 ms | 14.0 ms | 2.7x |
| `waterbox.gro` | `get_structure(model=1)` | 11.4 ms | 2.4 ms | 4.7x |
| `1aki.gro` | `get_model_count()` | 0.67 ms | 0.046 ms | 14.6x |

Note: for malformed multi-model files where a later model has a different atom count, a `ValueError` (broadcasting) is now raised instead of an `IndexError`/silently partially filled coordinates.

Tests run: `tests/structure/io/test_gro.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b0d32ca90e53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.