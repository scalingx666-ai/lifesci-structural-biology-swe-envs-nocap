# Issue

**Title:** Hotfix version conversion in quippy setup

## Description

Newer version of pip/wheels require a canonical version string, which may only include '.' as delimiters and at most one '+' to add a local label to public identifier.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1c52fd741a5f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.