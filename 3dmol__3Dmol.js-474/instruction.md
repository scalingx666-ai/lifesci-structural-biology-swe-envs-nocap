# Issue

**Title:** Make a copy of the selection before evaluating them

## Description

This ensures the user can never observe or break the caching done to improve evaluation time

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6dffe5580ad1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.