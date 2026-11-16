# Issue

**Title:** scaling: skip nan

## Description

AsuData may have nan when created manually. If you think it should not happen, I would like to add an overloaded prepare_points() that takes numpy arrays.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `716af8e12507`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.