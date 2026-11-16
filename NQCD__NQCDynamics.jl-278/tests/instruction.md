# Issue

**Title:** CompatHelper: bump compat for "FastBroadcast" to "0.2"

## Description

This pull request changes the compat entry for the `FastBroadcast` package from `0.1` to `0.1, 0.2`.

This keeps the compat entries for earlier versions.

Note: I have not tested your package with this new compat entry. It is your responsibility to make sure that your package tests pass before you merge this pull request.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf7f0ac5105a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.