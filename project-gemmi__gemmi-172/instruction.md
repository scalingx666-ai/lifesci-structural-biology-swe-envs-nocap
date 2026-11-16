# Issue

**Title:** to_mmcif: quote residue name

## Description

To avoid writing broken cif file in case residue name is empty. It happened when using a pdb file converted from shelx res file.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `260060bf7847`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.