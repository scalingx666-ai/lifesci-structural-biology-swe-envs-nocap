# Issue

**Title:** combined the two visualization tools into one

## Description

for future work, it might make sense to streamline these a bit for usability, but for now, this PR just combines the two types of visualization into one tool, where the mol render one is attempted first, then the notebook creation as a backup.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b8a0ea2ee1f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.