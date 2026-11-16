# Issue

**Title:** PDB fixes

## Description

-  
- fixed PDB building procedure
- added handling of faulty experimental PDB structures
- unaligned structures are passed to predicted databases - should be enough
- improved error messages
- added `--skip-pdb` flag to skip PDB alignment in case of unexpected bugs
- added protein length as user parameter

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `76d11b87a14b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.