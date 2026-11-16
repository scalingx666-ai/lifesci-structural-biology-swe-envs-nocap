# Issue

**Title:** adding score metrics

## Description

This adds

- Dask support for parallelizing scoring
- Robust score metrics that don't look at gaps

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `db20b7148751`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.