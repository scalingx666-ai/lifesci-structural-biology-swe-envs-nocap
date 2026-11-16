# Issue

**Title:** remove duplicate symbols related to quippy error abort

## Description

Picked up on upgrade to gfortran 10. Related PR for GAP repo coming shortly.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `759b5da3c640`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.