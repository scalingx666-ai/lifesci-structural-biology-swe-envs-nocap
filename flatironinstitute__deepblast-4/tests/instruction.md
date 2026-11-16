# Issue

**Title:** Needleman Wunsch

## Description

Adding a new module in, mainly because it is _much_ easier to debug.

The alignment matrix and its traceback matrix appear to be working (although numerical stability seems to be an outstanding issue).  Next we'll need to confirm that the Hessian is being calculated correctly.

- [x] Confirm numerical stability
- [x] Confirm Hessian works

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2c48130deb6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.