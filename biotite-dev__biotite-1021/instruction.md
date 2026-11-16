# Issue

**Title:** Speed up `SubstitutionMatrix` creation from dictionary or matrix name

## Description

- `SubstitutionMatrix._fill_with_matrix_dict()` decoded both symbols again in every iteration of the *n x m* loop and assigned each score to the NumPy array as a scalar. It now decodes each alphabet once and builds the `int32` array from a nested list in one call.
- `SubstitutionMatrix.dict_from_str()` converted the score strings with NumPy's `astype(int)` on a string array, which is slow. It now uses Python `int()`. The resulting dtype (`int64`) and dictionary values are unchanged.

Output is unchanged. I compared old and new for every matrix in the database (`dict_from_db()` keys, value types and values), the `std_*_matrix()` matrices, and the `KeyError` / `OverflowError` cases for a missing symbol pair and an out-of-range score.

| Input | Before | After | Speedup |
|---|---|---|---|
| `SubstitutionMatrix(alph, alph, matrix_dict)`, BLOSUM62 dict, ambiguous protein alphabet | 218 us | 72 us | 3.0x |
| `SubstitutionMatrix(alph, alph, "BLOSUM62")` | 477 us | 263 us | 1.8x |
| `SubstitutionMatrix(alph, alph, "NUC")`, ambiguous nucleotide alphabet | 192 us | 118 us | 1.6x |
| `SubstitutionMatrix.dict_from_db("BLOSUM62")` | 258 us | 187 us | 1.4x |

Tests run: `tests/sequence/align/test_matrix.py` and the `biotite.sequence.align` doctests.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.