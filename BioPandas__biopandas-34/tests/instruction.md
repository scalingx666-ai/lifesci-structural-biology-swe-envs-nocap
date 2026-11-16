# Issue

**Title:** Support rmsd computation for structures withh non-matching array indices

## Description

Addresses the issue discussed in #33 where a NaN was returned if 2 structures had non-matching array indices but were otherwise equivalent.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01a715f73c90`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.