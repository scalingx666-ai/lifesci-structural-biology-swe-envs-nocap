# Issue

**Title:** Fix handling of TER entries without numbering

## Description

PDB files saved from PyMOL do not have continuing numbering in TER lines. This produced a shift in the internal numbering of PLIP and led to distorted visualizations of molecules and PLIP interactions. The fix enables handling PDB files without numbering in TER lines.

This pull request fixes issue #167.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9132b5c84560`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.