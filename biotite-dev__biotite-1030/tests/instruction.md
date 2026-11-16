# Issue

**Title:** Vectorize `SequenceProfile.from_alignment()`

## Description

`SequenceProfile.from_alignment()` called `np.bincount()` separately for each alignment column.
Now all columns are counted with a single `np.bincount()` call, by offsetting the codes of each column into its own range of bins.
Values and dtypes of `symbols` and `gaps` are unchanged.

| Input | Before | After | Speedup |
|---|---|---|---|
| 20 random nucleotide sequences, 500 columns | 1.12 ms | 89 µs | 12.5x |
| `tests/sequence/data/alignment.fasta` (3 x 24) | 60 µs | 12 µs | 5x |

Tests run: `tests/sequence/test_profile.py`, doctests of `biotite.sequence`; additionally compared outputs against `main` for random alignments with gaps.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.