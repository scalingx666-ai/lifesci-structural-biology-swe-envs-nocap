# Issue

**Title:** add `macos-latest` to `ci.yml`

## Description

This PR adds `macos` to the systems in the testing actions to avoid surprises for macos users.

It also updates a test that checks to check if the proper cns binary is being passed to the grid scheduler that

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f869752343b3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.