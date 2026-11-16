# Issue

**Title:** New option to output in ModelCIF format instead of PDB format

## Description

This should solve #284 . The one missing feature is headers (REMARK and PARENT). Which at this point I'm not sure how they would translate in ModelCIF.

As commented in #284, this also fixes a mistake in the docs for `protein.from_pdb_string()`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `886494ffda84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.