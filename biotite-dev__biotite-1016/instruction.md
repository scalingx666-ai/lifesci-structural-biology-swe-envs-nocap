# Issue

**Title:** Speed up `base_pairs_edge()`

## Description

## Problem
For each base pair, `base_pairs_edge()` (via `_get_edge_matrix()`) called `hbond()` on the *entire* atom array, only using selection masks for the two bases. `hbond()` does O(n) work per call regardless of the selection (stacking the array, residue positions, element masks, ...), so the function scaled as O(pairs x atoms).

## Fix
Call `hbond()` only on the atoms of the two bases and map the resulting indices back to the original array. Hydrogen-donor assignment in `hbond()` is residue-local, so the result is identical.

Output is identical: compared `base_pairs_edge()` and `_get_edge_matrix()` (for all base pairs and stacked pairs, including raised exceptions and emitted warnings) on 1qxb, 1bna, 1gid, 1nkw, 1xnr and 4p5j.

## Timing (best of n, single thread)
| Structure | before | after | speedup |
|---|---|---|---|
| 1nkw (3451 atoms, 36 pairs) | 15.8 ms | 10.2 ms | 1.5x |
| 1gid (4612 atoms, 60 pairs) | 30.2 ms | 17.1 ms | 1.8x |
| 1xnr (43833 atoms, 538 pairs) | 1515 ms | 162 ms | 9.4x |

The gain grows with structure size (the old per-pair cost was linear in the number of atoms).

## Tests
`tests/structure/test_basepairs.py` and the `biotite.structure` doctests pass.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.