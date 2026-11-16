# Issue

**Title:** support altloc B in PDB for mk_prepare_receptor.py --box_enveloping

## Description

The RDKit PDB parser ignores atoms with altloc "B" (or any altloc that isn't either "A" or empty " "). This PR pre-processes the PDB string to set the altloc of all atoms to an empty string. This is exclusively for PDB files passed to `mk_prepare_receptor.py --box_enveloping` argument.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af7568fd12bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.