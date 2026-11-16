# Issue

**Title:** fix: scatterv segfault (update GAP)

## Description

Gap pointer update for the `scatterv` segfault fix.
Also includes the default new OpenMP chunksize.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b1e8ed000cb9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.