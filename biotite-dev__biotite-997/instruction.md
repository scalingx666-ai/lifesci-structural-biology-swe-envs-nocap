# Issue

**Title:** Speed up GenBank `get_sequence()` by using `str.translate()`

## Description

`genbank.get_raw_sequence()`, `get_sequence()` and `get_annotated_sequence()` removed position numbers and spaces from the *ORIGIN* field with a regex substitution (`re.sub("[0-9]| ", "", ...)`), which matches every single character of the sequence individually.
This PR replaces it with `str.translate()` and a precomputed deletion table, which removes the same characters (ASCII digits and space).

| Input | Function | Before | After | Speedup |
|---|---|---|---|---|
| `ec_bl21.gb` (4.6 Mbp) | `get_raw_sequence()` | 90.5 ms | 5.5 ms | 16x |
| `ec_bl21.gb` | `get_sequence()` | 92.6 ms | 9.6 ms | 9.6x |
| `sc_chrom1.gb` (230 kbp) | `get_sequence()` | 4.28 ms | 0.42 ms | 10x |
| `gg_avidin.gb` (1.2 kbp) | `get_sequence()` | 30.8 µs | 8.0 µs | 3.9x |
| `bt_lysozyme.gp` (147 aa) | `get_sequence()` | 7.3 µs | 5.3 µs | 1.4x |

Tests run: `tests/sequence/test_genbank.py`, `tests/sequence/test_generalio.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.