# Issue

**Title:** Use python -m pip instead of the pip executable

## Description

Make the user have to set fewer things by setting  Makefile var `PIP` to `${PYTHON} -m pip` by default.  Still overridden by an explicit value for `PIP`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88ae7bf8b0df`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.