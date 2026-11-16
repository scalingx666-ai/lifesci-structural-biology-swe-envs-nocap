# Issue

**Title:** Dispose windows as a separate EDT event. Doing this from the DnD event can cause a deadlock.

## Description

Potentially .

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c85787a7698b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.