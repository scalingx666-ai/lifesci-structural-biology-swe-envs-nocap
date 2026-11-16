# Issue

**Title:** pdb.rs: implement proper PageIndex iteration

## Description

The previous code worked under the assumption that a tables pages
had monotonic indicies from the first page to the last page. In
reality, pages are organized as linked lists which don't seem
to have any ordering constraints. 

I'm not super familiar how to work with lifetimes properly so feel free to use this as a template for your own implementation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `29bdfb7745de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.