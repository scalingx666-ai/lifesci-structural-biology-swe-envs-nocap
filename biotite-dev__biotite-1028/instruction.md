# Issue

**Title:** Speed up `CodonTable.codon_dict()`

## Description

`CodonTable.codon_dict()` converted each of the 64 codon numbers into codons separately and, for the string variant, decoded every codon and amino acid separately.
Now all codons are computed with a single `_to_codon()` call and decoded at once.
Keys/values and their types are unchanged.
`__eq__()`, `__repr__()` and `__str__()` use `codon_dict()` and profit as well.

| Input (standard codon table) | Before | After | Speedup |
|---|---|---|---|
| `codon_dict()` | 553 µs | 14 µs | 39x |
| `codon_dict(code=True)` | 357 µs | 35 µs | 10x |
| `str(table)` | 814 µs | 285 µs | 2.9x |
| `table == other_table` | 1.12 ms | 66 µs | 17x |

Tests run: `tests/sequence/test_codon.py`, doctests of `biotite.sequence`; additionally compared outputs against `main` for several NCBI tables.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.