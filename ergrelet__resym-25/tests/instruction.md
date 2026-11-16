# Issue

**Title:** Remove return type for destructors

## Description

. As far as I know there isn't another way to detect a destructor, and I've seen this method used in other projects.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fca5c3e89237`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.