# Issue

**Title:** Fix documentation build

## Description

Readthedocs changed the expected default locations of some files recently. This PR fixes it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b1da83fc96b3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.