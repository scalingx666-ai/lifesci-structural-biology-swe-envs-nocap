# Issue

**Title:** move the kabsch rotation step to gpu

## Description

Accelerate kabsch algorithm by moving svd to gpu

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `377f854c4f61`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.