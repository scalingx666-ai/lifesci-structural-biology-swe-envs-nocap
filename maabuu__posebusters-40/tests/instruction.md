# Issue

**Title:** Fix mol objects bug

## Description

API:
- Fix bug identified by Guy Durant: passing molecule objects into `bust` failed

SuCOS module:
- Update documentation and add reference

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `59427c11c937`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.