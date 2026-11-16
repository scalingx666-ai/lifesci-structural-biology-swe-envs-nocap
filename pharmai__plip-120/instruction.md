# Issue

**Title:** Fixes PDB file correction for multi-model structures

## Description

Hi Florian, happy new year! :)

I followed up on some issues I noticed and realized that for structures with multiple models, PLIP discards all header info (including the PDB ID) when checking the PDB file for mistakes. The issue causes the [pdbid]_PROTEIN filenames that occur when running PLIP on a structure from the PDB with multiple models. It also prevents PLIP web from correctly linking to the PDB entry of the structure.

This solves the issue.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `73a1c42cc45c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.