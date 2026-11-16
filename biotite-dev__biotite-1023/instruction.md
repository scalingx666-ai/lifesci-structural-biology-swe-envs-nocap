# Issue

**Title:** Speed up `dihedral_side_chain()` by computing all chi angles at once

## Description

`dihedral_side_chain()` looped over all 19 amino acids with chi angles and over each of their chi angles. That is 39 `dihedral()` calls on small boolean-masked subsets, so most of the runtime was Python and NumPy call overhead.

Now a cached lookup table maps each amino acid to the indices of the atoms that define its four chi angles. Undefined angles point to an appended row of NaN coordinates. All chi angles of all residues (and all models) are then computed with a single `dihedral()` call.

`dihedral()` works element by element, so the results are `np.array_equal` to `main` (same shape and dtype `float32`) for all inputs below.

| Input (atoms) | before | after | speedup |
|---|---|---|---|
| 1igy (12750) | 3.83 ms | 1.94 ms | 2.0x |
| 1aki (1079) | 2.44 ms | 0.41 ms | 5.9x |
| 1l2y stack (38 models x 304) | 2.67 ms | 0.54 ms | 4.9x |
| 2axd (1276) | 2.35 ms | 0.33 ms | 7.1x |
| 1crr (2672, protein + DNA) | 2.48 ms | 0.48 ms | 5.2x |

Tests: `tests/structure/test_geometry.py` and the `biotite.structure` doctests pass.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.