# Issue

**Title:** Build wheels

## Description

Switch to cibuildwheel for building wheels for PyPI. When this is merged https://github.com/libAtoms/quippy-wheels can be archived.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e11a100be629`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.