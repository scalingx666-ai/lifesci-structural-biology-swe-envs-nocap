# Issue

**Title:** Fixing CPU compatibility

## Description

Enabling CPU compatibility for aligners. Turned out that the arguments weren't being properly exposed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f7580307f25`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.