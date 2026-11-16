# Issue

**Title:** Speed up GRO file writing

## Description

`GROFile.set_structure()` formatted each atom line by indexing NumPy arrays element-wise (`model.res_name[i]`, `model.coord[i, 0] / 10`, ...), so most time was spent creating NumPy scalars.

Fix: convert the columns to Python lists once via `tolist()` (coordinates divided by 10 as array beforehand, so the float32 values are identical) and format from those. Output lines are identical to `main`.

| Input | before | after | speedup |
|---|---|---|---|
| `1aki.gro` (1k atoms) | 3.27 ms | 1.28 ms | 2.6x |
| `1l2y.gro` (38 models x 304 atoms) | 0.95 ms | 0.38 ms | 2.5x |
| `waterbox.gro` | 5.66 ms | 2.12 ms | 2.7x |

Tests run: `tests/structure/io/test_gro.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.