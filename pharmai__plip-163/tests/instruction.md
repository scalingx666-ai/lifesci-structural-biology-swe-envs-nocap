# Issue

**Title:** Added Chains flag to command tool

## Description

Added newly created chains flag to the plip cmd. Users can now specify chains of interest to analyze protein-protein interactions. 

e.g. plip -i 2XA0 --chains "[['A'], ['C']]" 
will only compute interactions between chain A (BCL-2) and chain B (BAX).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37f00974ec52`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.