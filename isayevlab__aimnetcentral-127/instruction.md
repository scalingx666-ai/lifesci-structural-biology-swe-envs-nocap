# Issue

**Title:** fix(neighbors): grow the adaptive buffer instead of silently truncating

## Description

## Problem

`AdaptiveNeighborList` sized its buffer by catching `NeighborOverflowError`, but **nvalchemiops never raises it in matrix mode** — it reports the true neighbor count in `num_neighbors` while returning only `max_neighbors` columns. So the retry branch was unreachable for these calls, and the trim to `actual_max` was a silent no-op on a list that had already been truncated. The dropped neighbors simply vanished from the energy, with no diagnostic.

The shrink heuristic made that reachable in ordinary use: it lowers `max_neighbors` from whatever system it just saw, with no path back up, so one evaluation on a **sparser** system permanently capped every later one on the same instance.

```
caffeine  #1   E = -20991.491200621 eV    max_neighbors 112 -> 32
single O atom  E =  -2041.536732106 eV    max_neighbors  32 -> 16
caffeine  #2   E = -20991.483428176 eV    same geometry, dE = 7.8e-03
caffeine  #3   E = -20991.483428176 eV    permanent
fresh calculator reproduces #1 exactly
```

Independently reproduced on a periodic cell: **+79.7 eV / 19.7 eV/A** after one sparser evaluation, and repeated calls on the truncated list were not even stable (`-27842.6 / -27838.3 / -27834.6`).

## Fix

Grow and rebuild whenever the reported count exceeds the allocated width. `_round_to_16(actual_max * 1.5)` strictly exceeds the previous width so the loop terminates, and the shrink heuristic already floors at `actual_max / target_utilization`, so the two do not fight. The `NeighborOverflowError` handler stays as belt-and-braces for the list-mode paths that do raise.

## Impact on results

Energies from a **freshly constructed** calculator were always correct and are unchanged. What changes is that a **reused** calculator now returns those same correct values instead of history-dependent ones.

Affects the main, LR, Coulomb and dispersion lists on any path reaching `make_nbmat`: PBC, CPU, caller-supplied `mol_idx`, `N > nb_threshold`, or `nb_threshold=0` (which the repo's own `model_calculator` fixture uses).

**Residual, deliberately out of scope:** `lr.py:266-285` (DSF mode 0) and `lr.py:1124-1141` (DFTD3 mode 0) inline the same heuristic and discard `num_neighbors` entirely, so they cannot detect truncation at all. Not live at defaults — both are bounded by `min(N-1, ...)` and mode 0 runs only below `nb_threshold`, so `max_neighbors` is already all-pairs. Whoever unifies the three copies should carry this check into the shared helper.

## Verification

- New `tests/test_neighbors.py`: asserts the buffer regrows past what a sparse system shrank it to, and that the neighbor matrix is history-independent. Both fail without the change.
- CI core selection: 524 passed. GPU lane (`test_calculator_gpu` + `test_neighbors -m gpu`): 24 passed.
- Numerical regression across `test_pbc`, `test_calculator`, `test_lr`, `test_ase`: 219 passed.
- Cost is ~1 ms warm (the 3.5 s first CPU call is one-time kernel warm-up), so the tests stay in the default gate.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c617c018974c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.