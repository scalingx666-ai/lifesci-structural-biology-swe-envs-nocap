# Issue

**Title:** python: make ChemComp.name/group mutable

## Description

We could not set group name of manually added monomers (using `monlib.add_monomer_if_present()`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `506b6356e534`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.