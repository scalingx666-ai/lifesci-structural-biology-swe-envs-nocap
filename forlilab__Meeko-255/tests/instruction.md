# Issue

**Title:** Add keyword argument `rename_atoms` to `MoleculePreparation.prepare` and make option avail in CLI script

## Description

This PR enables unique atom names in MoleculeSetup after MoleculePreparation with the relevant option. The main purpose is to address request #47. Option `--rename_atoms` is added to the CLI script in an analog to In `prepare_ligand4.py`; there's a `-w` option that renames ligand atoms, and `each newname is the original name of the atom plus its (1-based) uniqIndex`. 

Here're more details: 

- Add keyword argument `rename_atoms` to `MoleculePreparation.prepare`
The default is **False**, and it's just a keyword argument in function `prepare`. Because I didn't make it an attribute of MoleculePreparation, it can't be from the config (but we could, if the other way is preferred?). Python usage: 

```py
from meeko import MoleculePreparation
preparator = MoleculePreparation()
molsetups = preparator(mol, rename_atoms = True)
```

is equivalent to 

```py
molsetups = preparator.prepare(mol, rename_atoms = True)
```

- Make option available in `mk_prepare_ligand.py`
`mk_prepare_ligand.py` has a new option: 

```
  --rename_atoms        rename atoms: the new name will be the original name and its (1-based) index in
                        MoleculeSetup
```

- Format of new names
The new names are a combination of original name plus the atom's (1-based) index in MoleculeSetup at the last moment of molecule preparation. For example: `C ` might become `C14` and `OH` might become `OH15`. The index should be generally consistent with the order of atoms in the input molecule, but not Smiles or the order of output PDBQT file. And glue atoms will have indices too. When the name is longer than 4 characters, the original name will remain unchanged and a warning message shall be seen: 

```
Warning: Attempted to rename atom with original name XXX to XXX10. 
But the new name is too long (> 4 characters). The original name will be kept. 
```

- Assign/Import atom names
It's always possible to assign atom names in a rdkit molecule before MoleculePreparation. To import atom names, possible source includes: CIF files, MOL2/MOL files, PDB files, but PDB files are currently the only ones where atom names are parsed natively by RDKit. 

This started from the release branch, so it includes some other commits that have been merged into release but not present in develop. It also includes another small fix (14ec360) just for #233, although noncritical to the rest of this PR. 

@diogomart Please let me know what you think! Thanks for your time and advice in advance

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `07a38f8bac4a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.