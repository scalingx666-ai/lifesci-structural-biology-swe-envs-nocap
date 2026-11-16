# Issue

**Title:** Add more non-flat tests

## Description

Flatness 
- remove 5-membered ring system from default non-flat config because matching rings in AWJ and O2U are flat in ideal coordinate files
- add tests for AWJ and O2U

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8db78bb296ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.