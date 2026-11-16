# Issue

**Title:** Speed up `ScoreThresholdRule.similar_kmers()` and thus `KmerTable.match()` with similarity rule

## Description

`ScoreThresholdRule.similar_kmers()` is called from Rust once per *k-mer* in `KmerTable.match()`/`match_table()` (and the `BucketKmerTable` counterparts) when a similarity rule is given. Of its ~11 µs per call, ~5 µs were spent in `KmerAlphabet.split()` of the single input *k-mer* and ~4.5 µs in `KmerAlphabet.fuse()` of the result, mostly NumPy call overhead on tiny arrays, while the actual branch-and-bound in Rust took < 1 µs.

The fix lets the existing Rust `similar_kmers()` take the *k-mer* code and `k` directly and return fused *k-mer* codes (split via `%`/`/`, fuse via a fold when a *k-mer* is accepted). The Python side keeps the alphabet check and raises the same `AlphabetError` for out-of-range *k-mer* codes as `split()` did. Results are identical (checksums of outputs).

Input: `ProteinSequence.alphabet_ambiguous`, k=3, BLOSUM62, threshold 11 (~39 similar *k-mers* on average).

| Benchmark | Before | After | Speedup |
|---|---|---|---|
| `similar_kmers()` for 1000 random *k-mers* | 14.6 ms | 3.1 ms | 4.7x |
| `KmerTable.match()` of a 300 aa query against a table of 50 random 300 aa sequences | 4.8 ms | 1.5 ms | 3.3x |

Tests run: `tests/sequence/align/test_kmersimilarity.py`, `tests/sequence/align/test_kmertable.py`, `tests/test_doctest.py -k biotite.sequence.align`; `ruff`, `pyright`, `rustfmt --check` clean.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.