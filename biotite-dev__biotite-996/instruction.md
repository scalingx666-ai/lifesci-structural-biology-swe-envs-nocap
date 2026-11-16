# Issue

**Title:** Speed up `KmerAlphabet.get_symbols()`

## Description

`KmerAlphabet.get_symbols()` (also used by `str(kmer_alphabet)`) called `decode()` for each *k-mer* code separately, i.e. one `split()` call into Rust plus one `decode_multiple()` call per symbol.

The fix splits all *k-mer* codes at once. For a `LetterAlphabet` base alphabet, all characters are decoded in a single `decode_multiple()` call and joined by viewing the `U1` array as `U<k>`. For other base alphabets only the per-*k-mer* `split()` call is removed. Output is identical (checked via checksum of `repr()` of the returned tuple).

| Input | Before | After | Speedup |
|---|---|---|---|
| unambiguous nucleotide alphabet, k=6 (4096 symbols) | 33.3 ms | 1.2 ms | 28x |
| unambiguous protein alphabet, k=3 (8000 symbols) | 60.5 ms | 1.2 ms | 50x |
| generic `Alphabet` with 5 symbols, k=5 (3125 symbols) | 18.0 ms | 2.0 ms | 9x |

Tests run: `tests/sequence/align/test_kmeralphabet.py`, `tests/test_doctest.py -k biotite.sequence.align` (the class docstring covers `get_symbols()`).

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.