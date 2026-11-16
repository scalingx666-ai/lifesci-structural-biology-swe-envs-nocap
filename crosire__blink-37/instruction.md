# Issue

**Title:** Speed up source file lookup

## Description

For projects with many source files, the vector of vector search is slow (takes several seconds). This PR adds a hash map to speed up the search.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `19c01e2e0f42`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.