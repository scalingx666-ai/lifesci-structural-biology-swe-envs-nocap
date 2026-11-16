# Issue

**Title:** The last row of transformation matrix is redundant

## Description

The last row of a transformation matrix is always `[0,0,0,1]` and thus can be removed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `996a997365c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.