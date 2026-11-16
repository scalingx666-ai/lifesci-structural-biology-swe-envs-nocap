# Issue

**Title:** Avoid extraneous clone on tab titles

## Description

There's a `clone` on tab titles that is unnecessary. It's probably optimized out on release but doesn't hurt to remove.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a53415e83bf6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.