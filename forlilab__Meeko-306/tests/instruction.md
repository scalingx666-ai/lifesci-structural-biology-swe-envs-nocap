# Issue

**Title:** added function stitch from PR188, with options `residues_to_add` and `bonds_to_use`

## Description

This is a modified version of PR188. 

It added `bonds` attribute to all Polymer instances. And introduced a function `stitch` to output rdkit mol(s) from one or more selected monomers from a polymer. 

The major modification is to enable custom `residues_to_add` and `bonds_to_use`, which might be useful when a monomer to stitch is coming from a rdkit mol (covalent ligand). See the following example: 


```py
# example usage
from meeko import ResidueChemTemplates
from meeko import MoleculePreparation
from meeko import Polymer, Monomer
from meeko.polymer import find_inter_mols_bonds

import prody
from rdkit import Chem

# construct any input polymer
pdb_fn = "5tmn.pdb"
input_obj = prody.parsePDB(pdb_fn, altloc="all")
templates = ResidueChemTemplates.create_from_defaults()
mk_prep = MoleculePreparation()
polymer = Polymer.from_prody(
                input_obj,
                templates,
                mk_prep
                )

def monomer_from_mol(mol): 
    num_atoms = mol.GetNumAtoms()
    mapidx_to_raw = {i: i for i in range(num_atoms)}
    return Monomer(mol, mol, mapidx_to_raw, # initialize with the same raw_input_mol and rdkit_mol
                   atom_names=["X"]*num_atoms, input_resname="XXX") # required proprties by polymer.to_pdb()

# construct a new monomer from rdkit mol
polymer.monomers["E:0"] = monomer_from_mol(polymer.monomers["E:1"].rdkit_mol)

# find and index bonds
bonds = find_inter_mols_bonds({
    "E:0": (polymer.monomers["E:0"].rdkit_mol, polymer.monomers["E:0"].input_resname), 
    "E:2": (polymer.monomers["E:2"].rdkit_mol, polymer.monomers["E:2"].input_resname), 
})

# stitch specified residues by specified bonds
polymer_mol = polymer.stitch(residues_to_add=["E:2", "E:0"], bonds_to_use=bonds)

# output for inspection and comparison
output_file = "output.pdb"
Chem.MolToPDBFile(polymer_mol, output_file)

fn = "topdb.pdb"
with open(fn, "w") as f:
    f.write(polymer.to_pdb())
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5e38dc909e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.