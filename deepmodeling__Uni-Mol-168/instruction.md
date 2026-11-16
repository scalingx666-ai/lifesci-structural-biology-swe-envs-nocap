# Issue

**Title:** Better UniMol+ Data Setup

## Description

Added minor path corrections to data setup instructions so they can be executed by just following the instructions. 

The resulting `.lmdb` files used for training the PCQM4MV2 task will be in `Uni-Mol/unimol_plus/scripts/pcqm4m-v2`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d4d3d4122dbe`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.