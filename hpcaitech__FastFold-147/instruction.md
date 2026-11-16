# Issue

**Title:** add seed_torch function

## Description

By fixing random seeds, it is beneficial to reproduce the inference results of the model. You can use the seed_torch function to replace the random_seed variable.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `71735d5dbc2d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.