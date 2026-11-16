# Issue

**Title:** Non-square cells in DPstokes kernel params

## Description

This PR fixes an issue when DPStokes receives box sizes that do not allow to generate a square grid in the XY plane.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01cd9d175aad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.