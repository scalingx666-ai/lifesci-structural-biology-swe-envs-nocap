# Issue

**Title:** Fix: Build wheels only on public, not PR

## Description

Don't run wheels builds on PRs (by default), they take 1h to finish.

If checking wheels before merge to public is much wanted, create a dev branch as a target for PRs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4111ab3eaa6e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.