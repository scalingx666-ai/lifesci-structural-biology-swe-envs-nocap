# Issue

**Title:** Remove vesin pin

## Description

`vesin` versions before `0.5.8` contained a bug affecting the cells that was fixed  Therefore, we can bump the `vesin` version and remove the explicit dependency on `nvalchemi`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `091ecd18a122`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.