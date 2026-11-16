# Issue

**Title:** Update environment.yml and CI

## Description

CUDA installation was greatly simplified in conda-forge recently.  I am updating the conda environment and the CI accordingly.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `13ca5dddbd9e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.