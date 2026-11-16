# Issue

**Title:** fix: prevent trimming of empty si prefix

## Description

`0B -> 0  B`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d8cc16c8273`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.