# Issue

**Title:** Fixed HEADER record writing

## Description

The HEADER line lost a line break when entry_id was too long

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `41d5b6d05650`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.