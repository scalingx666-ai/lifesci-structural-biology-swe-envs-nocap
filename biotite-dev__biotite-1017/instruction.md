# Issue

**Title:** Speed up filter_intersection()

## Description

`filter_intersection()` packed the annotations into structured arrays and called `np.isin()` on them. Sorting structured (void) arrays uses a generic per-field comparison and was by far the dominant cost.

Fix: each annotation category is mapped to integer codes with `np.unique(..., return_inverse=True, equal_nan=False)` over both arrays, and the codes are folded into a single compact `int64` key per atom (re-compressed after each category, so no overflow). `np.isin()` on these integer keys is fast. The intersect annotations are cast to the dtype of `array`'s annotation as the structured array assignment did before; the now unused `_annotations_to_structured()` helper is removed.

| Input, `filter_intersection(atoms, atoms[::3])` | atoms | default categories before | after | `["res_id", "atom_name"]` before | after |
|---|---|---|---|---|---|
| 3wip | 16917 | 61.1 ms | 7.2 ms | 9.20 ms | 2.57 ms |
| 1igy | 12750 | 44.3 ms | 5.2 ms | 7.32 ms | 2.10 ms |
| 5eil | 7283 | 26.0 ms | 2.8 ms | 3.95 ms | 0.95 ms |
| 1o1z | 2254 | 6.5 ms | 0.8 ms | 1.07 ms | 0.26 ms |

Identical output verified for all 23 `tests/structure/data/pdb/*.bcif` structures (incl. float `b_factor`/`occupancy` annotations) with random subsets, perturbed `res_id`s, empty intersect and empty `categories`.

Tests run: `tests/structure/test_filter.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.