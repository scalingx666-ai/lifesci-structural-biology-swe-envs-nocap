# Issue

**Title:** add support for xyz files with scientific notation

## Description

python's float('1.12552e+01') can handle the scientific notation, but the regex did not match the exponents.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d65aae9279b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.