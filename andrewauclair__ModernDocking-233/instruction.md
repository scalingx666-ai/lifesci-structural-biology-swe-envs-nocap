# Issue

**Title:** Issue #230

## Description

Make sure that the main window root panel exists before attempting to persist its layout.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80e98822f9c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.