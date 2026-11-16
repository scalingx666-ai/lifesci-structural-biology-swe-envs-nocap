# Issue

**Title:** Remove `Clone` bound on `map_tabs` and `filter_map_tabs`

## Description

No point of having a FnMut if it can't mutably reference stuff outside

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e33130ce4e25`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.