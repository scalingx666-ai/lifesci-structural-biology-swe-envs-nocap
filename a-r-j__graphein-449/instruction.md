# Issue

**Title:** Add configurable timeout for PyMol mesh generation wait loop

## Description

- [x] Review new PR feedback that explicitly mentions @copilot
- [x] Inspect current mesh timeout tests and recent commit history
- [x] Check current CI workflow status/logs for context
- [x] Update mesh tests to use `tempfile` instead of hard-coded `/tmp` paths
- [x] Run targeted lint and tests for changed files
- [x] Run final automated validation (Code Review + CodeQL)
- [ ] Reply to the PR comment with the addressing commit hash

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4fccc7a4de28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.