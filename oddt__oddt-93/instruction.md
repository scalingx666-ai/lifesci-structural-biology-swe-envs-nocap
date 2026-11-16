# Issue

**Title:** Fix Windows problems with OB

## Description

Disable the residue name in OB to fix Windows behavior. This seem to fix the flaky test too. As of now the Python 3.4 is dropped.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8c7598422110`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.