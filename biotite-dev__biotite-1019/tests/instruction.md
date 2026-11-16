# Issue

**Title:** Speed up `find_stacking_interactions()` and `find_pi_cation_interactions()`

## Description

Both functions computed the centroid and plane normal of each aromatic ring in a Python loop (`mean()` + `np.cross()` per ring). The per-ring NumPy call overhead dominated the runtime for structures with many rings.

Fix: compute all centroids and normals at once in a new `_get_ring_geometry()` helper (replaces `_get_ring_normal()`): centroids via `np.add.at()` on the concatenated ring coordinates, normals via a single `np.cross()` on the first three atoms of each ring. `np.add.at()` was chosen over `np.add.reduceat()`, as the latter is not bitwise identical to `mean()`.

Centroids and normals are bitwise identical to the previous implementation for all rings in `tests/structure/data/pdb/*.bcif`; the returned interactions are identical for these structures (also with all nitrogen atoms artificially charged to exercise the pi-cation path).

| Input | Function | Before | After | Speedup |
|---|---|---|---|---|
| 1dix (1748 atoms, 37 rings) | `find_stacking_interactions` | 1.11 ms | 0.41 ms | 2.7x |
| 1igy (12750 atoms, 174 rings) | `find_stacking_interactions` | 5.34 ms | 2.00 ms | 2.7x |
| 3wip (16917 atoms, 260 rings) | `find_stacking_interactions` | 8.30 ms | 3.36 ms | 2.5x |
| 3wip (16917 atoms, 260 rings, 1 cation) | `find_pi_cation_interactions` | 6.97 ms | 2.05 ms | 3.4x |

Tests run: `tests/structure/test_rings.py`, `tests/test_doctest.py::test_doctest[biotite.structure]`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b0d32ca90e53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.