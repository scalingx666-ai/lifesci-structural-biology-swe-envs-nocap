# Issue

**Title:** Improve performance of `pdbx.get_structure()`

## Description

This PR replaces `_find_matches` (called inside `pdbx.get_structure()` if `include_bonds=True`) with `Map`-based implementation in Rust. This not only removes the 'hacky' dispatch between `_find_matches_by_dense_array` (`O(n^2)` but vectorized) and `_find_matches_by_dict` (`O(n)` but using a Python loop), but beats the speed of both variants:

**Small structure — 4p5j** (2011 atoms, 97 `struct_conn` rows → 13 covalent queries)

| implementation | time | speedup |
|---|---|---|
| old (dispatched) | 1.436 ms | 1.0x |
| old (dense array) | 1.448 ms | 1.0x |
| old (dict) | 3.504 ms | 0.4x |
| **new (Rust)** | **0.231 ms** | **6.2x** |

**Large structure — 5j7l** (295261 atoms, 11437 `struct_conn` rows → 2119 covalent queries)

| implementation | time | speedup |
|---|---|---|
| old (dispatched) | 666.1 ms | 1.0x |
| old (dense array) | 22164 ms | 0.03x |
| old (dict) | 631.4 ms | 1.1x |
| **new (Rust)** | **30.6 ms** | **21.8x**

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06ca1c349a32`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.