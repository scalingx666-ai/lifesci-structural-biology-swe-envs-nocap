# Issue

**Title:** SMILES as REMARK in PDBQT to export RDKit mol

## Description

- PDBQTMolecule.export_rdkit_mol() exports an RDKit molecule
   without needing to use an SDF/MOL2 file as template, by using
   a SMILES string that is included as a REMARK in the PDBQT
 - now depend on RDKit
 - PDBQTMolecule __init__ is from string, not PDBQT filename
 - PDBQTMolecule.from_file() to init from filename

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dafc2fcefa0a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.