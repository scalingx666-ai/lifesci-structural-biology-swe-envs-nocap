# Issue

**Title:** Speed up `LetterAlphabet.get_symbols()`

## Description

`LetterAlphabet.get_symbols()` decoded each symbol individually from a `|S1` array.
Now the symbol bytes are decoded at once and split into a tuple of one-character strings.
As `LetterAlphabet.__hash__()` and comparisons with non-letter alphabets use `get_symbols()`, they also profit, e.g. `PositionalSequence` construction, which hashes the original alphabet for each position.
The now unused private `_symbols_as_bytes()` helper is removed.

| Input | Before | After | Speedup |
|---|---|---|---|
| `get_symbols()` of ambiguous protein alphabet | 2.2 µs | 0.2 µs | 11x |
| `hash()` of ambiguous protein alphabet | 2.3 µs | 0.3 µs | 7.7x |
| `PositionalSequence()` of 300-residue protein | 809 µs | 304 µs | 2.7x |

Tests run: `tests/sequence/test_alphabet.py`, `test_seqtypes.py`, `test_sequence.py`, `tests/sequence/align/test_matrix.py`, doctests of `biotite.sequence`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.