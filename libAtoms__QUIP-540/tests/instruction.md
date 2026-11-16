# Issue

**Title:** re-add md and vasp_driver to executables in wheel

## Description

Copy all executables to BUILDDIR when building wheel.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e739f8dd7ff`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.