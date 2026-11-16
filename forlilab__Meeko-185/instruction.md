# Issue

**Title:** Fixing NME in #180 by fallback logics instead of additional information from chem template

## Description

This PR offers two types of fallback logics to handle systems with modified residues that aren't fully compliant with the template reaction and/or the expected adjacent molecule SMARTS. Additional information from chem template is not required. 

Here the fallback options are explained with NME as an example: 

(1) While making a padded NME

NME is the target residue molecule. It's only being padded on the N-term side. However, the template reaction smarts requires more than NME can offer as the reactant. 

In this case, the MCS (maximum common substructure) of NME and the template reactant will be computed. The non-common part of the reactant will be dropped. The MCS will be accepted as a fallback reactant as long as the required atom from adjacent molecule is present. The following information will be printed to standard output: 

```
target_mol ([H]NC([H])([H])[H]) is not fully compliant with the template rxn ([C:1](=[O:2])[C:3][N:4]>>[C:1](=[O:2])[C:3][N:4][C:11](=[O:12])[C:13])...
Switched from Template rxn ([C:1](=[O:2])[C:3][N:4]>>[C:1](=[O:2])[C:3][N:4][C:11](=[O:12])[C:13]) to Fallback rxn ([#6:3]-[#7:4]>>[C:3][N:4][C:11](=[O:12])[C:13])
```

(2) While making a padded residue with NME

NME is the adjacent residue molecule. It's used as source of atom positions to pad the C-term of its previous residue. However, the template adjacent res SMARTS requires more than NME can offer as the adjacent mol. 

In this case, only one fallback option will be considered which is to drop the unmapped atoms from adjacent res SMARTS, as these atoms won't be used as source of atom positions anyways. The following information will be printed to standard output: 

```
adjacent_mol ([H]NC([H])([H])[H]) is not fully compliant with the template adjacent_smarts (C(=O)[C:11][N:12])...
Switched from Template adjacent mol (C(=O)[C:11][N:12]) to Fallback adjacent mol ([C:11][N:12])
```

Apart from the fallback logics, the refactoring includes the following aspects: 

- Simplify react_and_map in rdkitutils
- Modularize existing functions in class ResiduePadder into smaller functions
- Fill in incomplete docstrings and type hints in the relavant parts
- Use list/set/dictionary comprehensions 
- Other refactoring/minor fixes to extend error handling
- Fix #182
- Minor fix to add to #183

Overall, I think this PR is better than what I previously suggested () and can be useful for other nonstandard residues not just NME. The changes shouldn't change the behaviors of handling standard residues and it doesn't require further updates of chem templates (not sure why GitHub marked the diff..). 

@diogomart Could you please take a look at the changes at your convenience, and let me know what you think? 


As an example (original PDB file of 2G5Z): 
[2g5z.pdb.txt](https://github.com/user-attachments/files/17254630/2g5z.pdb.txt)
It has a nonstandard residue DHA at B:66 and a broken ILE at B:229. 

Command
```
mk_prepare_receptor.py --pdb 2g5z.pdb --delete_residues B:66,229 --output_filename 2g5z --skip_gpf
```

Standard Output
```
[00:13:35] product atom-mapping number 11 not found in reactants.
[00:13:35] product atom-mapping number 12 not found in reactants.
[00:13:35] product atom-mapping number 11 not found in reactants.
[00:13:35] product atom-mapping number 12 not found in reactants.
[00:13:35] product atom-mapping number 13 not found in reactants.
adjacent_mol ([H]NC([H])([H])[H]) is not fully compliant with the template adjacent_smarts (C(=O)[C:11][N:12])...
Switched from Template adjacent mol (C(=O)[C:11][N:12]) to Fallback adjacent mol ([C:11][N:12])
target_mol ([H]NC([H])([H])[H]) is not fully compliant with the template rxn ([C:1](=[O:2])[C:3][N:4]>>[C:1](=[O:2])[C:3][N:4][C:11](=[O:12])[C:13])...
Switched from Template rxn ([C:1](=[O:2])[C:3][N:4]>>[C:1](=[O:2])[C:3][N:4][C:11](=[O:12])[C:13]) to Fallback rxn ([#6:3]-[#7:4]>>[C:3][N:4][C:11](=[O:12])[C:13])
[00:13:35] product atom-mapping number 11 not found in reactants.
[00:13:35] product atom-mapping number 12 not found in reactants.
[00:13:35] product atom-mapping number 13 not found in reactants.

Files written:
2g5z.pdbqt <-- static (i.e., rigid) receptor input file
```

Output PDBQT: 
[2g5z.pdbqt.txt](https://github.com/user-attachments/files/17254729/2g5z.pdbqt.txt)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e8e0b6970c53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.