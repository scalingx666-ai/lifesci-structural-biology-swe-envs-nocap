# Issue

**Title:** Vectorize `find_subsequence()`

## Description

`find_subsequence()` iterated over every position of the sequence in Python and called `np.array_equal()` for each frame.
Now the loop runs over the (short) query instead, comparing each query symbol with all frames at once.
The returned array is still built from a list, so the dtype (including `float64` for an empty result) is unchanged.

| Input | Before | After | Speedup |
|---|---|---|---|
| 10 kb `NucleotideSequence` (E. coli), query `GGATCC` | 12.0 ms | 14 µs | ~870x |
| Cas9 (1368 residues), query `GL` | 1.67 ms | 7 µs | ~235x |

Tests run: `tests/sequence/test_search.py`, doctests of `biotite.sequence`; additionally compared outputs against `main` for random sequences/queries (incl. empty query and query longer than the sequence).

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.