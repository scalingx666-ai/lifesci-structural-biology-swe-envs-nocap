# Issue

**Title:** fix(quantised-diatomic): new sqrt to avoid errors

## Description

If the root-finding procedure is slightly off it's possible to attempt negative sqrts and run into errors. This uses an alternative sqrt function that checks for this case and returns 0 instead. Warnings are emitted to inform the user that this is happening.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3e344689a1b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.