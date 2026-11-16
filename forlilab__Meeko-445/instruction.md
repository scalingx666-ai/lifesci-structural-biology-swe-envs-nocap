# Issue

**Title:** allow polymer creation without suppling template and mk_prep

## Description

This PR simply allows the appropriate polymer creation functions (from_pdb_string, from_pqr_string, etc...) to create default templates and mk_prep if none are given. This way, it skips the user a couple of lines of code if they are fine with the default options. 

This should not break any previous functionality.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `30e1540c6070`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.