# Issue

**Title:** refactor chunk for training

## Description

Our previous chunk code is based on inference, which means that no gradient and inplace is just ok.

However, in training, inplace is forbidden by Pytorch. And I made some modifications on chunk=None cases to avoid inplace.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1ae5325e421`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.