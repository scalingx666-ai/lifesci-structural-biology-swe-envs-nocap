# Issue

**Title:** Speed up `to_3di()` by avoiding masked arrays in partner search

## Description

`PartnerIndexEncoder._find_residue_partners()` built the O(n²) pairwise distance matrix with `numpy.ma` operations (`ma.dot`, masked arithmetic, `nan_to_num` on a masked array). Those dominated `to_3di()`.

Now the matrix is computed on plain arrays: masked residues are set to NaN (which becomes `inf`, like the masked entries that `argmin()` filled with `inf` before), and `nan_to_num(nan=inf)` is replaced by an equivalent `clip()` + NaN assignment. The partner search itself becomes ~3.8x faster (0.54 -> 0.14 ms, 213 residues).

`to_3di()`, model 1, amino acids only:

| Input | Longest chain | Before | After | Speedup |
|---|---|---|---|---|
| 4ZXB (5 chains) | 800 res | 13.0 ms | 5.8 ms | 2.2x |
| 5H73 | 363 res | 2.13 ms | 0.96 ms | 2.2x |
| 5UGO | 326 res | 1.82 ms | 0.89 ms | 2.1x |
| 1IGY (4 chains) | 434 res | 7.67 ms | 3.72 ms | 2.1x |
| 1DIX | 208 res | 1.03 ms | 0.58 ms | 1.8x |
| 1AKI | 129 res | 0.68 ms | 0.45 ms | 1.5x |

The speedup grows with chain length (the quadratic part); for short chains the remaining per-chain overhead dominates.

Output checked identical to `main` (codes and `PartnerIndexEncoder.encode()` results) for all structures in `tests/structure/data/pdb`, including variants with randomly removed atoms to produce masked residues (also at the first position).

Tests: `tests/structure/alphabet`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b0d32ca90e53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.