# Issue

**Title:** De-lint PROPKA

## Description

This is the start of a long pull request (or perhaps multiple requests) to bring PROPKA 3.1 close to PEP8 standards.  Use of standards should make it easier to maintain community development.

@orbeckst and @speleo3 - can you take a look?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62f7dfce1ae0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.