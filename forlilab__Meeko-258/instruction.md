# Issue

**Title:** Read Partial Charges from mol2 and SDF

## Description

This is for #224. 

`Chem.MolFromMol2File` in RDKit parses partial charges into atom property name `_TriposPartialCharge`. This PR simply reads the charges from atom property at the point [init_atom](https://github.com/forlilab/Meeko/blob/07a38f8bac4aa9eef4ef30aa8e67475b15d517aa/meeko/molsetup.py#L1662). 

An additional attribute, `charge_propname`, is added to `MoleculePreparation`, and it needs to be used with option `charge_model = "read"`. The default is `_TriposPartialCharge`. 
The corresponding argument `read_charges_from_prop` is also added to the `from_mol` method for RDKitMoleculeSetup to be accessed at a lower level. It must not be conflicting with argument `compute_gasteiger_charges` (formerly `assign_charges`). 
Some error messages for conflict handling are added. 

Notes: 

- The total charge from the mol2 file will be preserved (i.e. if the total charge is non-integer at the beginning, the sum of the output charges will be the same). 
- In addition to `_TriposPartialCharge`, any other named RDKit Atom attribute can be used as the source of charges. 
- The RDKit parser needs the MOL2 file to have valid SYBYL atom types, which is not the case for some definition MOL2 files in/from Amber/AmberTools. 

Python usage example: 
[212163792.mol2.txt](https://github.com/user-attachments/files/17967004/212163792.mol2.txt)

```py
from meeko import MoleculePreparation
from meeko import PDBQTWriterLegacy
from rdkit import Chem

input_filename = "212163792.mol2"
output_filename = "212163792.pdbqt"
mol = Chem.MolFromMol2File(input_filename, removeHs=False)
mk_prep = MoleculePreparation(charge_model="read", charge_atom_prop="_TriposPartialCharge")
molsetup_list = mk_prep(mol)
molsetup = molsetup_list[0]
pdbqt_string = PDBQTWriterLegacy.write_string(molsetup)

with open(output_filename, "w") as f:
    f.write(pdbqt_string[0])
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `07a38f8bac4a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.