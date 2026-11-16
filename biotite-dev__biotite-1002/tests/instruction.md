# Issue

**Title:** Speed up `orient_principal_components()` by skipping full SVD matrices

## Description

`orient_principal_components()` called `np.linalg.svd(centered)` with the default `full_matrices=True`, which computes the full *(n,n)* left singular vector matrix in each iteration, although only the singular values and the *(3,3)* right singular vectors are used.
This is *O(n²)* in time and memory (e.g. ~650 MB for a 12k atom structure).
Passing `full_matrices=False` gives bitwise identical `sigma` and `components` (checked on the inputs below; the resulting transformation matrices are `np.array_equal`).

| Input (atoms) | before | after | speedup |
|---|---|---|---|
| 1l2y (304) | 0.42 ms | 0.09 ms | 4.4x |
| 1aki (1079) | 15.6 ms | 0.39 ms | 40x |
| 1dix (1748) | 44.7 ms | 0.41 ms | 110x |

Tests: `tests/structure/test_transform.py` (all pass).

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.