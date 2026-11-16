# Issue

**Title:** Speed up `AtomArrayStack.get_array()`

## Description

`AtomArrayStack.get_array()` (used by `stack[i]` and iteration over a stack) created the model via `AtomArray(length)`, which allocates a NaN-filled coordinate array and the seven default annotation arrays only to replace all of them directly afterwards.
Most of the time was spent in this redundant initialization (including the overhead of `__setattr__()`).

The fix creates the `AtomArray` via `__new__()` and sets its attributes directly, the same approach `_subarray()` already uses.
The returned model still shares the annotation arrays with the stack, gets a copy of the `BondList` and a view of the coordinates/box, as before.

| Input | Operation | Before | After | Speedup |
|---|---|---|---|---|
| 1l2y (38 models, 304 atoms) | `stack[0]` | 7.25 µs | 1.32 µs | 5.5x |
| 1l2y | `list(stack)` | 0.269 ms | 0.045 ms | 6.0x |
| 1gya (18 models, 1976 atoms) | `stack[0]` | 10.24 µs | 2.01 µs | 5.1x |
| 1gya | `list(stack)` | 0.181 ms | 0.031 ms | 5.8x |

One corner case differs: if a default annotation (e.g. `ins_code`) was deleted from the stack, the returned model previously contained a zero-filled version of it; now it is absent, consistent with `_subarray()` and slicing.

Tests run: `tests/structure/test_atoms.py`, `tests/structure/test_geometry.py`, `tests/structure/test_superimpose.py`, `tests/structure/io/test_pdbx.py`

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7eb9c66dedc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.