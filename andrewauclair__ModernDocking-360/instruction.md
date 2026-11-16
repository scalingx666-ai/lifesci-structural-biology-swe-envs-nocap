# Issue

**Title:** Custom Hook for Dynamic Dockable Creation

## Description

API users are now able to add their own listener to create dynamic dockables when they are loaded from a layout.

Some documentation is needed and it would be nicer to have a better test setup for this and other dynamic dockable features.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6d891ebb3368`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.