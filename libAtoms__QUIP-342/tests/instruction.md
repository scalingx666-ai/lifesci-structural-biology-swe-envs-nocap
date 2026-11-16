# Issue

**Title:** Install f90wrap with same options as quippy

## Description

Pip should use the same options (--user) for f90wrap as for quippy, as given by $QUIPPY_INSTALL_OPTS.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7c90ab4a4300`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.