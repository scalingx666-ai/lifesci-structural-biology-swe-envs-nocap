# Issue

**Title:** Catch prepare errors without interrupting batch processing

## Description

This is a quick fix to catch prepare errors without interrupting batch processing, using try/except as proposed in #271.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4554056b91af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.