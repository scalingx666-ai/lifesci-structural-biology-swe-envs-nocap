# Issue

**Title:** Update workflow

## Description

Maintenance
- update workflow action versions
- switch to pandas `iloc` in tests because of deprecation warning

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf9528045e1f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.