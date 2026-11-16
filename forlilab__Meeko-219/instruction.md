# Issue

**Title:** Fixes to export covalent (two-point attached) docking results

## Description

The PR has two fixes to export covalent (two-point attached) docking results: 

20a6a86
The order of flexible sidechain information in the BEGIN_RES remark is different, when generated from `mk_prepare_ligand.py` with `CovalentBuilder`: 
```
BEGIN_RES A HIS 309
``` 

fe976df+56f7f31
Adds a checks to mk_export.py and prints warning when sdf_string is empty. If SDF is the only file asked to generate, exits and print a suggestion to use `-k` to retain flexres

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ae23f949c642`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.