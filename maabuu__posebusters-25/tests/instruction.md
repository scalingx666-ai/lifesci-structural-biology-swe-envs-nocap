# Issue

**Title:** Testing molecule generation models

## Description

Modules:
- Add SuCOS model to calculate similarity of binding poses between non-identical ligands

Config:
- Add `gen` configuration for testing generated molecules

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e89ed86200b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.