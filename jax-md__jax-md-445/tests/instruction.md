# Issue

**Title:** Don't execute the tutorials when Read the Docs builds without the notebook bundle

## Description

Put `execute: never` back on the tutorials, since Chapter 3 ran out of memory when Read the Docs executed it without the notebook bundle.

## Checklist

- [x] Tests added/updated and passing
- [x] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50fc82b60f97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.