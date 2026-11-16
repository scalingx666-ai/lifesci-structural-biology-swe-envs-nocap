# Issue

**Title:** Update module packaging

## Description

Add pyproject.toml but still use setup.py to build broken Openbabel pypi bindings.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ee10a81946e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.