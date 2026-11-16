# Issue

**Title:** Vectorize nucleotide `SequenceProfile.to_consensus()`

## Description

For nucleotide profiles `SequenceProfile.to_consensus()` determined the IUPAC symbol for each position separately in a Python loop.
Now the positions of the maximum count in each row are encoded as a bit mask in a vectorized manner, which is then mapped to the IUPAC symbol.
The error for an empty column (incl. the reported row) is unchanged.

| Input | Before | After | Speedup |
|---|---|---|---|
| Nucleotide profile with 500 positions | 1.38 ms | 39 µs | 35x |

Tests run: `tests/sequence/test_profile.py`, doctests of `biotite.sequence`; additionally compared outputs against `main` for random alignments and the empty-column error.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.