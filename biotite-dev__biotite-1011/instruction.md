# Issue

**Title:** Speed up `connect_via_distances(periodic=True)`

## Description

The periodic fallback of `connect_via_distances()` called `distance()` once per residue on an all-vs-all matrix and then compared each atom pair in a nested Python loop. For structures with many small residues (e.g. solvated MD systems) the per-residue `distance()` overhead dominated.

Fix: enumerate all intra-residue pairs `(i, j)` with `j < i` at once with `np.repeat`/`np.cumsum` (same order as the former nested loop), call `distance()` once on all pairs and filter with a vectorized comparison.

Output is identical (checked `as_array()` equality incl. dtype for 92 cases: 3 models of `waterbox.gro`, all `tests/structure/data/pdb/*.bcif` structures with a box, the same with an artificial triclinic box and wrapped coordinates, an empty array; each with two tolerance/bond-type settings).

| Input | Before | After | Speedup |
|---|---|---|---|
| waterbox.gro model 1 (1851 atoms) | 15.5 ms | 0.26 ms | 59x |
| 1aki (1079 atoms) | 7.90 ms | 0.38 ms | 21x |

(`inter_residue=False`; with `inter_residue=True`: 15.7 ms -> 0.43 ms and 8.0 ms -> 0.50 ms)

Tests run: `tests/structure/test_connect.py` (includes `test_method_consistency[periodic=True]`).

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.