# Issue

**Title:** QuantiseDiatomic updates

## Description

Includes handling for periodic copies of atoms for structures/simulations with a `PeriodicCell` to quantise a periodic copy with the shortest possible bond length. 
This fixes some occurrences of #292.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6131924be8a4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.