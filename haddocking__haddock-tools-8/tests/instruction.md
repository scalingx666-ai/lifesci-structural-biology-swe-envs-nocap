# Issue

**Title:** add function of doing only one mutation in command line mode

## Description

The previous script can only accept a file of mutation list to do many mutations in batch and output to mutant pdb files. 
Besides this i/o mode , the new script can directly accept pdb file and mutation info to do only one mutation and print out the mutant pdb content to the stdout, which likes the way of pdb_tools.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eabe2099cce7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.