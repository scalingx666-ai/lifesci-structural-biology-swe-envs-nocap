# Issue

**Title:** feat!: use international date format

## Description

Use date format YYYY-MM-DD for unambiguity and simpler parsing.

BREAKING CHANGE: Breaks scripts that rely on the old format.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e1b280c9177`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.