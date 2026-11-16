# Issue

**Title:** suppress rdkit reaction atom map warning in residue padder

## Description

For the reaction run by ResiduePadders, it suppresses the following rdkit warnings:
```
[23:00:47] product atom-mapping number 11 not found in reactants.
[23:00:47] product atom-mapping number 12 not found in reactants.
[23:00:47] product atom-mapping number 11 not found in reactants.
[23:00:47] product atom-mapping number 12 not found in reactants.
[23:00:47] product atom-mapping number 13 not found in reactants.
```
these arise because the product has atom labels that the reactants don't, but those labels are added on purpose. The filter is removed immediately after the reaction. Since the logger is a singleton, it is not guaranteed that the same warning won't be suppressed when multiprocessing from some other reaction that happens to be running, but I think that's OK.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c070668de3e4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.