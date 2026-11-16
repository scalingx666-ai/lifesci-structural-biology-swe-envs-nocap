# Issue

**Title:** return P1 space group when number 0 requested

## Description

It returned "P 2 1 1" when e.g. mrc file (space group header: 0) was opened. This would be not what is expected.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `095d350c2396`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.