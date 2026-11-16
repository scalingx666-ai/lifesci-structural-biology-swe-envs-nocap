# Issue

**Title:** Speed up molecule detection (get_molecule_indices/masks, molecule_iter)

## Description

`get_molecule_indices()`, `get_molecule_masks()` and `molecule_iter()` called `find_connected()` once per molecule. Each call rebuilds the adjacency list and visited mask for the whole structure, and the Python loop also ran `visited_mask.all()`/`argmin()` over all atoms per molecule, i.e. *O(n_molecules x n_atoms)*. Structures with many waters/ligands were therefore slow (`remove_pbc()` uses `get_molecule_masks()` too).

Fix: a small Rust function `molecule_labels()` (in `connect.rs`, sharing the adjacency list helper with `find_connected()`) labels every atom with its molecule in a single BFS pass, numbering molecules by their first atom. `get_molecule_indices()` then groups atoms via a stable `argsort` + `bincount`, so molecule order and the ascending atom order within each molecule are unchanged. `molecule_iter()` now reuses `get_molecule_indices()`.

| Input (`include_bonds=True`) | atoms | molecules | `get_molecule_indices` before | after |
|---|---|---|---|---|
| 1aki | 1079 | 79 | 2.12 ms | 0.05 ms |
| 1dix | 1748 | 137 | 6.01 ms | 0.08 ms |
| 1igy | 12750 | 9 | 3.47 ms | 0.41 ms |
| 3wip | 16917 | 461 | 194 ms | 0.62 ms |

`get_molecule_masks()` on 3wip: 191 ms -> 1.2 ms; `list(molecule_iter())`: 204 ms -> 8.9 ms.

Tests run: `tests/structure/test_molecules.py`, `test_box.py`, `test_connect.py` (all pass); also checked identical output for empty and bond-less `BondList`s.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.