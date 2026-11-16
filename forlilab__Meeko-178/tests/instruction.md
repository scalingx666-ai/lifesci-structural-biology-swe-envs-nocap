# Issue

**Title:** Raise RuntimeError when MolFromPDBBlock failed to return a mol

## Description

In mk_prepare_receptor, RDKit's Chem.MolFromPDBBlock is used to build input_mols per residue, when `--pdb` is used to parse receptor PDB file. Sometimes, MolFromPDBBlock failed to return a Mol if residue's structure is corrupt. 

Currently, problems like: 
```
[23:04:08] Explicit valence for atom # 1 O, 3, is greater than permitted
```
would not terminate the process. The incomplete input_mols are carried on for chorizo building. 

The change raises RuntimeError when MolFromPDBBlock failed to return a mol, and provide hopefully helpful information to locate the residue that didn't go through MolFromPDBBlock. 

Before the change, the error message is displayed: 
```
Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/Users/amyhe/Desktop/0_forks/Meeko/scripts/mk_prepare_receptor.py", line 437, in <module>
    chorizo = LinkedRDKitChorizo.from_pdb_string(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 741, in from_pdb_string
    bonds = find_inter_mols_bonds(raw_input_mols)
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 149, in find_inter_mols_bonds
    positions = mol.GetConformer().GetPositions()
AttributeError: 'NoneType' object has no attribute 'GetConformer'
```

After, the process is terminated immediately when Chem.MolFromPDBBlock failed on a residue: 
```
Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/Users/amyhe/Desktop/0_forks/Meeko/scripts/mk_prepare_receptor.py", line 437, in <module>
    chorizo = LinkedRDKitChorizo.from_pdb_string(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 740, in from_pdb_string
    raw_input_mols = cls._pdb_to_residue_mols(pdb_string)
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 1468, in _pdb_to_residue_mols
    raise RuntimeError(f"An error occurred while trying to build pdb mol for {reskey} {resname}")
RuntimeError: An error occurred while trying to build pdb mol for A:30 DT
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `552abfa83e6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.