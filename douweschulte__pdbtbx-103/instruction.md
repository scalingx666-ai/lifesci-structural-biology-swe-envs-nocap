# Issue

**Title:** Added model removal helper functions

## Description

I have added some helper functions for removing models from a PDB. This is a common operation that I have been needing, so thought I would add it to the library.

I also fixed two of the tests which where failing due to issues with finding the PDB files, so they now use a path relative to the manifest to find the files, which should be more robust to files being moved around.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `52829ed4865c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.