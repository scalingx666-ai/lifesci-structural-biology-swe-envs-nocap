# Issue

**Title:** Add capping group NHE to residue_chem_templates.json

## Description

This is a very small fix inspired by someone else's issue. NHE is a capping group in Amber and some other force fields representing C-terminal amidation. Previously, only the fl (free-ligand) forms of NHE were registered in residue_chem_templates.json.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4929d39fc6b2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.