# Issue

**Title:** feat: rewrite find_inter_mols_bonds function with faster kdtree implementation

## Description

rewrite find_inter_mols_bonds function with faster kdtree implementation. This runs considerably faster. Uses Scipy cKDTree implementation, which very efficiently searches all pairs of atoms. 

old function is still there, just not used.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1bfe33c26586`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.