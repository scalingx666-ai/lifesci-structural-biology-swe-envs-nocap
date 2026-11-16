# Issue

**Title:** CompatHelper: bump compat for "HDF5" to "0.14"

## Description

This pull request changes the compat entry for the `HDF5` package from `^0.13.3` to `^0.13.3, 0.14`.

This keeps the compat entries for earlier versions.

Note: I have not tested your package with this new compat entry. It is your responsibility to make sure that your package tests pass before you merge this pull request.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0e0ce1d2b63e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.