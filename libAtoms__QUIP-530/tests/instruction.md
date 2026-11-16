# Issue

**Title:** GAP: Check A vs 32bit

## Description

Related to 

Checks the size of the local part of matrix A against the 32bit integer limit early and aborts with a message how many MPI processes should at least be used to prevent this from happening.

This also includes counting the sparse points in a sparse or sparse index file early, and either aborting if it does not match the given number, or setting the internal variable to the count if it no number was given. The MPI features and memory estimate profit from this.

Concerns #494

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74517d266aa7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.