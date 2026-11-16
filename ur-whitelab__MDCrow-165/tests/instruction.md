# Issue

**Title:** fix barostat bug

## Description

barostat should only be added for NPT. There's a bug where barostat is attempted to be added for NVT due to missing indents.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `345ac2069f70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.