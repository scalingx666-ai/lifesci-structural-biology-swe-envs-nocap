# Issue

**Title:** Fix/preprint benchmark fixes

## Description

5 main fixes:
1. More robust PDB files retrieval with better error logging
2. Robust mmseqs2 result parsing - no-hits or single hit TSVs crashed before
3. search-databases subcommand had some mismatched argument names. Now fixed
4. fill both directions of a contact map in align_contact_map
5. Register all unit tests

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `99e2030422a4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.