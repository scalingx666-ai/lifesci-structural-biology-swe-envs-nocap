# Issue

**Title:** Add support for selenomethionine

## Description

Add MSE to config files.

Add MSE to default classifiers.

- Diff is unnaturally large due to random order of some fields in automatic code generation.

Add MSE to unit tests.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4944035bc162`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.