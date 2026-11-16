# Issue

**Title:** Speed up `find_rotatable_bonds()`

## Description

`find_rotatable_bonds()` checked for every candidate bond whether both atoms are in the same cycle by scanning all cycles with `in` on Python lists, i.e. O(bonds x cycles x cycle size). Large cycles (e.g. from disulfide bridges) made this especially slow. In addition, `BondList.as_graph()` creates a `BondType` attribute dict per edge, which is not needed for the cycle basis.

Fix:
- Build the graph from the plain edge list (same node/edge insertion order as `as_graph()`, so the cycle basis is identical).
- Map each atom to the set of cycles it belongs to and check `isdisjoint()`.
- Filter by bond type and partner count with NumPy before the loop.

Output is identical (checked `as_array()` equality incl. dtype on all `tests/structure/data/pdb/*.bcif` structures, 10 CCD molecules, ATP and an empty `BondList`).

| Input | Before | After | Speedup |
|---|---|---|---|
| 1aki (1079 atoms) | 10.78 ms | 1.25 ms | 8.6x |
| 1gya (1976 atoms) | 9.36 ms | 2.18 ms | 4.3x |
| 1l2y (304 atoms) | 1.03 ms | 0.51 ms | 2.0x |

Tests run: `tests/structure/test_connect.py`, `tests/test_doctest.py::test_doctest[biotite.structure]`.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.