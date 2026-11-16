# Issue

**Title:** Simplify BinWrite for IndexPageContent

## Description

This replaces the last manual implementation of BinWrite in the main PDB module with binrw annotations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80ff3873da93`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.