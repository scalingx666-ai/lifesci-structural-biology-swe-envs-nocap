# Issue

**Title:** OpenMPI and OpenMP Makefiles for Archer2

## Description

The old instructions for Archer2 needed updating. 

The pull also contains instructions for the new MPI implementation of GAP on Archer2. 

This was tested and worked as of today.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `53fa928b8bfb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.