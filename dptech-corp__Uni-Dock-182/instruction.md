# Issue

**Title:** Skip out-of-bounds poses instead of reporting FLT_MAX energies

## Description

## Summary

- : Unexpected high positive affinity scores and constant "ENERGY FROM SEARCH" value of 3.4e+38 (FLT_MAX)

**Root cause**: When GPU BFGS optimization moves a ligand pose outside the grid box, CPU refinement (with increasing penalty slopes) tries to pull it back. If after all `refine_step` iterations the pose is still out of bounds, `vina.cpp:1801` sets `poses[i].e = max_fl` (= FLT_MAX since `fl = float`). These invalid poses were still being rescored and written to output, producing confusing high positive affinity values.

**Fix**: Add `not_max(poses[i].e)` guards at all 6 scoring/output loops to skip poses marked as out-of-bounds. `not_max()` is an existing utility in `common.h` that checks `x < 0.1 * max_fl`.

### Files changed
- `unidock/src/lib/vina.cpp` — 4 guards (2 scoring loops + 2 RMSD/output loops)
- `unidock/src/lib/vina.h` — 2 guards (1 scoring loop + 1 RMSD/output loop)

## Test plan

- [ ] Build with CUDA and verify compilation
- [ ] Dock 90k ligands with box 20×20×20 → out-of-bounds poses should be skipped instead of producing FLT_MAX
- [ ] Normal docking unchanged (no poses skipped when all are within bounds)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.