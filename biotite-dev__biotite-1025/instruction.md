# Issue

**Title:** Speed up `Sequence.__iter__()`

## Description

`Sequence.__iter__()` decoded each symbol individually via `Alphabet.decode()` on a NumPy scalar, which is slow for e.g. `list(sequence)` or `"".join(sequence)`.
Now the whole sequence code is decoded at once via the `symbols` property and converted into a list of built-in symbols (`tolist()`, so `str` symbols stay `str`, not `np.str_`).

| Input | Before | After | Speedup |
|---|---|---|---|
| `list()` of 300-residue `ProteinSequence` | 84 µs | 16 µs | 5.3x |
| `list()` of 10 kb `NucleotideSequence` | 2.88 ms | 0.47 ms | 6.1x |
| `"".join()` of 10 kb `NucleotideSequence` | 2.83 ms | 0.50 ms | 5.7x |
| `list()` of 1000-symbol `GeneralSequence` (generic `Alphabet`) | 243 µs | 67 µs | 3.6x |

Tests run: `tests/sequence/test_sequence.py`, `test_seqtypes.py`, `test_alphabet.py`, `test_annotation.py`, doctests of `biotite.sequence`; additionally compared outputs (values and element types) against `main` for random sequences.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.