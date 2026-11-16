# Issue

**Title:** Speed up `repeat()` for structures with bonds

## Description

`repeat()` built the repeated `BondList` by appending the original bond list in a loop (`repeated_bonds += atoms.bonds`).
Each `+=` creates a new `BondList`, copying all previously accumulated bonds, so the runtime is quadratic in the number of repetitions.
This affects `get_assembly()`, `get_unit_cell()` and `repeat_box()` for structures with bonds.

The fix replaces the loop with a single `BondList.concatenate([atoms.bonds] * repetitions)`, which yields the identical bond list (same atom offsets, same order).

| Input (1aki, 1079 atoms, with bonds) | Before | After | Speedup |
|---|---|---|---|
| 8 repetitions | 0.103 ms | 0.054 ms | 1.9x |
| 24 repetitions | 0.398 ms | 0.098 ms | 4.1x |
| 60 repetitions | 2.527 ms | 0.200 ms | 12.6x |

Tests run: `tests/structure/test_atoms.py`, `tests/structure/test_box.py`, and the assembly/unit cell tests in `tests/structure/io/test_pdbx.py` and `tests/structure/io/test_pdb.py`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.