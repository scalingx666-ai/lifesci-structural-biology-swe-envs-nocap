# Issue

**Title:** Fixed github actions

## Description

Conditions were not fulfilled in order to upload the package to PyPI. This part of the GitHub actions was simply ignored during the execution. Changed it to the same condition as used for AutoDock-Vina.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0dec352c6e4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.