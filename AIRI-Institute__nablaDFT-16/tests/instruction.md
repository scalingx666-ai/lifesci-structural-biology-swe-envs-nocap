# Issue

**Title:** Fixes

## Description

- Fixed training resume scenario, when EarlyStopping callback throws error.
- Fixed location for HamiltonianDatabase and HamiltonianDataset classes.
- Fixed ESCN and Equiformer rely on data.y var, lead to potential error during predict procedure.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cbc4816d329d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.