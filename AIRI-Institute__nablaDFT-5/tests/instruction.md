# Issue

**Title:** Fix LR scheduler patience in SchNet train script

## Description

Introduce constant for LR scheduler patience, previously patience retrieved from unexisting  CLI argument

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1350da7fab92`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.