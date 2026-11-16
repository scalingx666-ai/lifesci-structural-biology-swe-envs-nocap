# Issue

**Title:** Handle MRC files with non-standard indexing

## Description

This should address the issue of loading an MRC file where mapc,mapr,maps != 1,2,3 and close #1053, maybe also point to a solution for #1054. Please review and merge if it looks good to you.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `70b37bd1df14`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.