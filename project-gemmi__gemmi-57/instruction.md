# Issue

**Title:** pybind11 is not a runtime dependency

## Description

so drop it from `install_requires` (keeping it in `setup_requires`)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e045d94e3e82`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.