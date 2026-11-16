# Issue

**Title:** monlib: fix link_side_matches_residue

## Description

In my understanding, group matching should be done only when `comp` is unspecified. Correct?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5c42199453c6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.