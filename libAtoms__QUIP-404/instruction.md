# Issue

**Title:** fix: reconnect QUIPPY_FCOMPILER to f2py

## Description

Commit 8321a45570f0acce1c7db40cba86e6482762c684 set `fcompiler=gnu95` option of f2py to fix a Github build problem. This is not necessary and can be reverted.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc02e462d2af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.