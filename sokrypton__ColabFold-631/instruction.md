# Issue

**Title:** removed ,<3.12 for causing installation issues

## Description

The <3.12 python version check was making it impossible to install the package on Linux distributions that use newer versions of python by default. Can confirm that the ColabFold package installs perfectly on current latest versions of python and the check in my opinion is unnecessary.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1648d2335943`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.