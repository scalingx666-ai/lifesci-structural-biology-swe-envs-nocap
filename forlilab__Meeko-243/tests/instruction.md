# Issue

**Title:** refactor polymer.parameterize to run on individual monomer

## Description

Refactored to allow running instances of  `MoleculePreparation` on individual monomers. For example:
```python
mk_prep = MoleculePreparation()
for residue_id, monomer in polymer.monomers.items():
    monomer.prepare(mk_prep, residue_id)
```
The residue_id is passed to populare the atoms with `PDBAtomInfo` that stores chain, resnum, icode, etc

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `27a19259bf1c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.