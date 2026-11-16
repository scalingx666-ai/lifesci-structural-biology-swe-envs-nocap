# Issue

**Title:** Speed up `Alignment` string conversion by vectorizing symbol lookup

## Description

`Alignment._gapped_str()`, which backs `Alignment.get_gapped_sequences()` and `str(Alignment)`, looped over every alignment column in Python and decoded each symbol with `Sequence.__getitem__()`.

The new code decodes all non-gap symbols at once with `Alphabet.decode_multiple()` and puts them into an object array prefilled with `-`.
Non-`ndarray` decode results go through `np.fromiter()`, so symbols that are sequences themselves (e.g. tuples, k-mers) are not unpacked by NumPy. The output is unchanged; I checked this for letter alphabets, general alphabets with tuple symbols, `KmerAlphabet` and `PositionalSequence`.

| Input | Before | After | Speedup |
|---|---|---|---|
| `get_gapped_sequences()`, MSA with 50 sequences x 141 columns (`1a00_A_uniref90.a3m`) | 3146 us | 781 us | 4.0x |
| `str()`, same MSA | 3456 us | 1062 us | 3.3x |
| `str()`, pairwise protein alignment (141 columns) | 148 us | 44 us | 3.4x |

Tests run: `tests/sequence/align/test_alignment.py`, `test_cigar.py`, `test_multiple.py`, and the `biotite.sequence.align` doctests.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.