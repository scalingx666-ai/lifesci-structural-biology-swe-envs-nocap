# Issue

**Title:** add `ruff` format CI check for changed files

## Description

Add a format action check and update the documentation in regards to which format should be used in the project.

_Suggested by @sverhoeven in

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `87b8fcec8c6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.