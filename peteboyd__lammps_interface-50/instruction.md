# Issue

**Title:** fix unicode issue

## Description

The README contained a non-ASCII character.
Since the setup.py reads the README.md without specifying the encoding,
on systems where UTF-8 was not the default this could result in decoding
errors.

This commit both explicitly uses utf-8 to read the README and also
removes the (unnecessary) special character.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d7b397b2460`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.