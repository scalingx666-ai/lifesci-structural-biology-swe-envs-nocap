# Issue

**Title:** Speed up `SyncmerSelector.select_from_kmers()` and `CachedSyncmerSelector` creation

## Description

`SyncmerSelector.select_from_kmers()` looped over every input *k-mer* in Python, calling `create_kmers()`, `permute()` and `argmin()` once per *k-mer*. `CachedSyncmerSelector.__init__()` calls this method on *all* *k-mers* of the alphabet, so it is affected as well.

The fix computes the *s-mer* codes of all *k-mers* at once via Horner's scheme on the split symbol codes (`(n_kmers, window)` array), applies the permutation once on the flattened array and takes `argmin()` along the last axis. Results are identical.

| Input | Before | After | Speedup |
|---|---|---|---|
| `select_from_kmers()`, 5000 nt random sequence, k=10, s=4, no permutation | 6.23 ms | 0.27 ms | 23x |
| same, `RandomPermutation` | 15.19 ms | 0.29 ms | 52x |
| `CachedSyncmerSelector(nucleotide, k=8, s=3)` creation | 83.1 ms | 3.5 ms | 24x |

Tests run: `tests/sequence/align/test_selector.py` (all pass; `test_syncmer` compares against a naive reference implementation, `test_cached_syncmer` covers the cached variant).

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.