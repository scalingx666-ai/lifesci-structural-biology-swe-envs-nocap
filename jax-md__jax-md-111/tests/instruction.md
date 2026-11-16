# Issue

**Title:** fix bug in calculate_bond_data function

## Description

previous version used a dr_cutoff of 1 regardless of what was passed.

Thanks to @MaxiLechner for pointing this out!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `936527f64842`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.