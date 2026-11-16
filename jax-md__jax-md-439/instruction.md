# Issue

**Title:** Fix rigid-body Langevin rotations, account for box changes in neighbor list rebuilds, use cell lists for rectangular boxes

## Description

, , . Addresses #438.

## Checklist

- [x] Tests added/updated and passing
- [x] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bbc610559142`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.