# Issue

**Title:** Remove SQL Server 2019 CU7

## Description

This CU was pulled due to a regression. See
https://support.microsoft.com/en-us/help/4570012/cumulative-update-7-for-sql-server-2019
for details

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ceb50dca2b67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.