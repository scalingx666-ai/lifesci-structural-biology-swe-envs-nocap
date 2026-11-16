# Issue

**Title:** Speed up filter_polymer()

## Description

`filter_polymer()` sliced the `AtomArray` once per `res_id`-continuous segment (copying all annotations each time), then filtered and counted residues per slice. Structures with many chains/ligand segments therefore paid one full `AtomArray` slice + filter + `get_residue_starts()` per segment.

Fix: compute the polymer type mask once, select the matching atoms once, and count residues per segment vectorized: residue starts of the selected atoms (plus starts at segment borders) are counted per segment with `np.bincount()` and spread back via `spread_segment_wise()`. The `pol_type` dispatch and its `ValueError` are unchanged.

| Input | atoms | segments | before | after |
|---|---|---|---|---|
| 3wip | 16917 | 31 | 10.64 ms | 1.31 ms |
| 5eil | 7283 | 6 | 2.28 ms | 0.73 ms |
| 1igy | 12750 | 6 | 2.45 ms | 1.09 ms |
| 1o1z | 2254 | 2 | 0.76 ms | 0.43 ms |
| 1l2y | 304 | 1 | 0.33 ms | 0.34 ms |

Identical output verified for all 23 `tests/structure/data/pdb/*.bcif` structures x all three polymer types x `min_size` 1/2/5, the empty array and the invalid `pol_type` error.

Tests run: `tests/structure/test_filter.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.