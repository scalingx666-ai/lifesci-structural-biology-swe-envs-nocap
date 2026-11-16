# Issue

**Title:** Feat: decouple blocksizes

## Description

Cheat `pdtrtrs` to think blocksizes of A are identical asserting that there is only a single process column. Change `mpi_blocksize` to `mpi_blocksize_rows` and `mpi_blocksize_cols`.

:warning: This is a breaking change wrt. `mpi_blocksize`. Should not be much of a problem as it's an optional argument, only relevant for people who have tried out MPI and set it manually.

Depends on

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c1fedf744c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.