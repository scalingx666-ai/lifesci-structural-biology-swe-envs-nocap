# Issue

**Title:** Omit manylinux2010 (EOL) from build-wheels

## Description

I think the wheels should default to manylinux2014.

The `openblas_support.py` file also needs some change. I'll probably push another commit for that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8e99b0ad3187`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.