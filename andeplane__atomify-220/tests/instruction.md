# Issue

**Title:** feat: add typecheck to CI pipeline

## Description

Adds TypeScript typechecking to the CI pipeline to catch type errors before merging.

Changes:
- Added `typecheck` script to package.json: `tsc --noEmit`
- Added typecheck step to CI workflow after installing packages and before running tests

This ensures that all TypeScript code is type-checked as part of the CI process.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5e8d56cd8ffa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.