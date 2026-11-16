# Issue

**Title:** Release 0.3.0

## Description

Release new version. This is a [MINOR](https://semver.org/) update as a backward-compatible symplectic integrator is added in this release to i-PI.

Also, this PR adds functionality for automating releases à la [ShiftML.](https://github.com/lab-cosmo/shiftml/blob/main/.github/workflows/release.yml)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `86b2115dfb83`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.