# Issue

**Title:** Fix Brownian for small dt

## Description

Also, now accepts gamma, dt and kt as kwargs.

Resolves:
- #343 
- #218 
- #118

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `67e05302fcb1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.