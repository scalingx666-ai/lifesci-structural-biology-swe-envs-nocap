# Issue

**Title:** Polymer from PQR

## Description

This is for #264. PQR is a file format similar to PDB and contains Q (charge) and R (radius). The major programs that uses PQR are PDB2PQR and APBS. Being able to parse PQR would allow us to directly get the computed charges for Polymers with available models in PDB2PQR (PARSE, AMBER, etc.). 

This PR is adapted from the PQR parser in PDB2PQR and the existing (RDKit-based) method in Meeko to create Polymer from PDB. Specifically, the partial charge will be first parsed into atoms in a monomer's `raw_rdkit_mol`. Next, to transfer it to the monomer's `padded_mol` and `molsetup`, a `get_atomprop_from_raw` option is added to function `monomer.parameterize`. This needs to be a dict, with keys of atom property name and values of corresponding default values. This additional function may be re-used to pass on other properties. Radius from PQR is also parsed, but currently not transferred to `raw_rdkit_mol`, `padded_mol` or `molsetup`. 

If more people find it useful, we can add option `--read_pqr`, and expose option `--charge_model` to `mk_prepare_receptor.py`. Might need #277 to merge first before further edits on the command line scripts.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f78e28873de7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.