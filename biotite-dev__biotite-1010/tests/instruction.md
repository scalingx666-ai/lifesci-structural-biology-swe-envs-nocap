# Issue

**Title:** Speed up periodic distance measurement and `move_inside_box()`

## Description

Periodic boundary handling in `displacement()` (and hence `distance()`, `angle()`, `dihedral()` and their `index_*()` variants with `periodic=True`) and in `move_inside_box()` spent most of its time in a few slow NumPy operations:

- `fractions % 1`: `np.remainder` on floats is slow. Replaced with `fractions - np.floor(fractions)`, which gives bitwise identical results (both compute the exact value and round once).
- `fractions[fractions > 0.5] -= 1` (orthogonal box): boolean mask indexing replaced by `fractions -= fractions > 0.5`.
- Triclinic box: the 8 periodic copies were built as a `(k,8,3)` array, so every operation ran along the short XYZ axis. They are now built as `(8,3,k)` with the atom axis last. The squared norm is summed by hand in the same order, so results are identical.

All outputs were checked with `np.array_equal` against `main`. They match exactly, including dtype.

| Input | before | after | speedup |
|---|---|---|---|
| `index_distance(periodic=True)`, 20k pairs, orthogonal box | 1.61 ms | 0.72 ms | 2.2x |
| same, `float32` box | 1.61 ms | 0.63 ms | 2.5x |
| same, triclinic box | 4.39 ms | 1.68 ms | 2.6x |
| `index_angle(periodic=True)`, 20k triples, orthogonal box | 3.61 ms | 1.81 ms | 2.0x |
| `index_displacement(periodic=True)`, 1l2y (38 models), 20k pairs | 52.7 ms | 22.6 ms | 2.3x |
| `move_inside_box()`, 20k atoms | 0.62 ms | 0.20 ms | 3.2x |
| `move_inside_box()`, `waterbox.gro` (1851 atoms) | 0.16 ms | 0.10 ms | 1.7x |
| `remove_pbc_from_coord()`, `waterbox.gro` | 0.88 ms | 0.49 ms | 1.8x |

Tests: `tests/structure/test_geometry.py` and `tests/structure/test_box.py` pass. These include the periodic distance tests with orthogonal and triclinic boxes.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.