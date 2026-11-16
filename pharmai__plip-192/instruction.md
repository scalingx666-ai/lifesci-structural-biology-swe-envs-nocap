# Issue

**Title:** Report filenaming and compression

## Description

This pull request solves issue #129 
- More control over report filename parsing
- New default report filename behavior
- New option to gzip-compress the report files
- Proper filenaming for batch processing

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7573f04c44f0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.