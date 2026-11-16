# Issue

**Title:** Non-periodic IBM

## Description

The Immersed Boundary module does not have good support for non periodic boundaries.
This PR makes it so that if the box is not periodic in some direction, interpolation and spreading will only be considered for cells inside the domain.

I also added a bunch of tests for the module and fixed some compilation warnings.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b51073f4235b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.