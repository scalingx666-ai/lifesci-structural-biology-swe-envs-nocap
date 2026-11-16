# Issue

**Title:** Feat: blocksize overflow check

## Description

Includes #437
Depends on 

`mpi_blocksize` setting and checking is now done early. If `lwork` of `pdgeqrf` or `pdormqr` will overflow, this check fails early.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d26ddf19b18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.