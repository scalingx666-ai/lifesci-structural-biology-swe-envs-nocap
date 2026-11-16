# Issue

**Title:** fix some includes

## Description

Some thrust includes were missing  and caused miscompilation in recent CUDA version

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e1b43bc05c64`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.