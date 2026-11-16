# Issue

**Title:** GAP ScaLAPACK Test

## Description

Block factor fix, GAP commit pointer update, test. Opened for automated testing of GAP changes.

~:exclamation:  Don't merge before GAP commit pointer gets updated to a merged version.~

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e1b280c9177`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.