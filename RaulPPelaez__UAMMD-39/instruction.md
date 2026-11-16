# Issue

**Title:** Clarify usage of tolerance in PSE

## Description

Added a check for the tolerance parameter. The constructor will throw if a too large tolerance is passed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d3b57dd5bf9e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.