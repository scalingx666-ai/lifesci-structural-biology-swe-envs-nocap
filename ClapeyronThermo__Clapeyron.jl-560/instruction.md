# Issue

**Title:** Add identifier strings literals

## Description

- adds `@cas_str` and `@smiles_str`
- enables models construction like `PCSAFT(cas"7732-18-5")` or `PCSAFT(smiles"O")`
- adds docs

The SMILES method is somehow unreliable as the smiles are not canonicalized internally. It just searches for this exact SMILES code in the identifiers.csv, but I added them anyways. If there is a good method in the future, we can just add internal canonicalization to this function to make smiles unique internally. This is also documented in the docstring.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1e033fee605f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.