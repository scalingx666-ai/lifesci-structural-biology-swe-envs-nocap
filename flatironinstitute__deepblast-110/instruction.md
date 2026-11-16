# Issue

**Title:** Use CPU aligner if no GPUs provided #109

## Description

This isn't fully tested, but it should do the trick.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d67d07276748`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.