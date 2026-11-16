# Issue

**Title:** Always on Top Only When Iconified

## Description

Only set the frame to always on top true, then false to trigger the frame to come to front when it is currently iconified and the API was asked to bring a dockable to the front.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6d891ebb3368`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.