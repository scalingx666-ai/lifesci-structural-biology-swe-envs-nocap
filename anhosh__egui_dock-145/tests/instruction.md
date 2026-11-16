# Issue

**Title:** feat: allow disabling vertical/horizontal splits

## Description

I have a use case where I never ever want the user to be able to make vertical splits. This PR allows the programmer to disable vertical or horizontal splits via `allowed_splits` on the `Style` struct.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aea6fd2b9273`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.