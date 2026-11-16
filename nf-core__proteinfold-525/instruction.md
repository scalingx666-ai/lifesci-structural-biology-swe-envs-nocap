# Issue

**Title:** af2 multimer test reduced to single replicate

## Description

**This was intentionally submitted against dev rather than hackathon branch.**

By default alphafold2 multimer runs 5 replicates of each of the 5 models. The time can be reduced by setting this argument to run only a single replicate for each of the 5 models.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aa0764b6a0c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.