# Issue

**Title:** fix(pdb): align Ucs2le strings to 4 bytes

## Description

I had this lying around... My CDJ-350 players would instantly crash when reading a generated pdb export containing Ucs2le strings without this fix. Maybe someone has an intuition on a more general fix or better way to work around the issue.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `199fb9278a94`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.