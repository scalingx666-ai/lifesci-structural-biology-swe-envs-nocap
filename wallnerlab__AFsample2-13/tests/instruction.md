# Issue

**Title:** Update default flag file to work out of the box for a standard AlphaFold database dir

## Description

Update AF_multitemplate/monomer_full_dbs.flag:
  - adapt to standard AlphaFold database dir layout
  - Fix mmcif_files location

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `417729d9773a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.