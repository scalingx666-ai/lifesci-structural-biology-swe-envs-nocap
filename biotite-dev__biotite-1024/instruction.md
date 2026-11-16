# Issue

**Title:** Speed up `pseudoknots()` and `dot_bracket()`

## Description

## Problem
`pseudoknots()` (and thus `dot_bracket()`/`dot_bracket_from_structure()`) did a lot of redundant work:
1. In the dynamic programming step (`_remove_pseudoknots()`), for *every* pair of non-disjoint solutions the subsolutions of all split positions `k` in the overlap range were combined again, although many solution pairs share the same split positions. This produced millions of redundant `frozenset` unions.
2. In `_get_results()`, the optimal solutions of the remaining conflicting regions were recomputed for each solution of the lower order, although the same clique of regions reappears many times.
3. `dot_bracket()` built each notation string in a Python loop over all base pairs of all solutions, which dominates once `pseudoknots()` is fast and there are many solutions.

## Fix
1. Collect the split positions of all non-disjoint solution pairs in a set first, then combine the subsolutions once per split position. As solution candidates are a set, the resulting candidates are the same.
2. Cache the optimal solutions per clique (keyed by the `frozenset` of its regions) for the duration of one `pseudoknots()` call.
3. Build the notations with NumPy fancy indexing (opening/closing positions interleaved, so assignment precedence for bases in multiple pairs is unchanged).

The returned solutions are the same: compared old vs. new `pseudoknots()` for all 21 `tests/structure/data/pseudoknots` inputs and 10 random base pair sets, each with `max_pseudoknot_order` `None`/`0`/`1` and with/without scores (shape, dtype and set of solution rows identical). Note that the *row order* of multiple equivalent solutions already varied from call to call before this change (it depends on `id()`-based hashing of `_Region` objects), so it is not affected in a meaningful way. The new `dot_bracket()` notation building was compared against the old loop on the same pseudoknot orders (including inputs with bases in multiple pairs).

## Timing (best of 2-3)
| Input | Function | before | after | speedup |
|---|---|---|---|---|
| `pseudoknots/test0` (20 bp) | `pseudoknots` | 2299 ms | 384 ms | 6.0x |
| `pseudoknots/test3` (20 bp) | `pseudoknots` | 1044 ms | 299 ms | 3.5x |
| `pseudoknots/test11` (20 bp) | `pseudoknots` | 4026 ms | 992 ms | 4.1x |
| `pseudoknots/test18` (20 bp) | `pseudoknots` | 4187 ms | 995 ms | 4.2x |
| 1xnr base pairs (538 bp) | `pseudoknots` | 986 ms | 161 ms | 6.1x |
| 1xnr base pairs (538 bp) | `dot_bracket` | 1293 ms | 188 ms | 6.9x |

Small, barely knotted inputs (e.g. 4p5j, 1gid with ~1 ms) are unchanged. The whole `tests/structure/test_pseudoknots.py` now runs considerably faster as well.

## Tests
`tests/structure/test_pseudoknots.py`, `test_dotbracket.py`, and the `biotite.structure` doctests pass.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.