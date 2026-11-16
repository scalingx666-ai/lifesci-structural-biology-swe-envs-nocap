# Issue

**Title:** fix(pdb): skip reading rows of invalid pages

## Description

as per doc of `pdb::Page::page_flags` certain
pages contain garbage data and thus should
not try to read rowdata.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2fc2858a617`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.