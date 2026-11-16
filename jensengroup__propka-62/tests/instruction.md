# Issue

**Title:** Enable package-based CI

## Description

Enable continuous integration testing using pytest.

@speleo3 and @orbeckst - this is just FYI.  Unless you object, I'll merge into master.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4875d9ee65d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.