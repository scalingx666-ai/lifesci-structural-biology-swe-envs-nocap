# Issue

**Title:** Fixed cuequivariance external fallback and scaling

## Description

Fixing two issues we have uncovered during local testing: 

- cuequivariance external fallback was missing
- scaling condition for cuequivariance was incorrect

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56da08ec75d2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.