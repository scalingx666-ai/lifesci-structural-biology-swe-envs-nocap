# Issue

**Title:** use versioneer for version management

## Description

- fix #87 
- add versioneer with proper configuration for test coverage
- add a small test for the new `propka.__version__` attribute
- make docs automatically use the version
- fixed omitted author in docs

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7563a706cf00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.