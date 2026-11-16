# Issue

**Title:** Add general DIIS functionality, SCF-DIIS validated and working

## Description

Implements Direct Inversion of the Iterative Subspace as a method agnostic tool.

Use `@set diis true` to turn on DIIS.

Currently only SCF uses DIIS, but this can be easily extended to CI/CC iterative procedures.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6542017cce1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.