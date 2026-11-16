# Issue

**Title:** ENH for #453 - quippy descriptor gradient ii array copied

## Description

Copying `ii` array (cross-index of gradients) into Python. Earlier the array was a pointer to a Fortran array, which may be deallocated while still being addresses from Pyton.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bebe7183b7c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.