# Issue

**Title:** Add residue templates to disambiguate Amber resname and CCD names

## Description

This is for #210. It only includes addition of chemical templates, and it does not change the matching of existing residue names. In this PR, 107 new ambiguous residue names and 567 unique templates are added to the default chemical template file, `residue_chem_templates.json`. It's also possible to distribute the new templates by libraries, or as a separate file. 

The technical details of the additional templates are as follows: 

- Disambiguation
The purpose of putting additional templates into the default template file is disambiguation in case of conflicts between Amber residue names and CCD names. All possible matches and the variants are registered under the same parent (an ambiguous residue name). 

- Source of additional residues
The following Amber OFF lib files in Amber24 are picked as source of additional residues: 
```py
leap_lib_path = '$AMBERHOME/dat/leap/lib/'
all_lib = (leap_lib_path+x for x in (
    # AA in ff19SB
    'amino19.lib',
    'amino19ipq_0.9.lib',
    'aminoct19ipq_0.9.lib',
    'aminont19ipq_0.9.lib',
    # mod AA
    'phosaa19SB.lib', 
    'mod_amino19.lib',
    # RNA
    'RNA.lib',
    'terminalphos.LJbb-RNA.lib',
    # DNA
    'DNA.OL15.lib',
    'parmBSC1.lib',
    # mod NA
    'all_modrna08.lib',
))
```
The outcomes are combined in a non-overwriting manner, as residues with duplicate names are skipped. 14 Residues with   unsupported elements and corrupt atomic numbers were discarded. 

- Processing of Amber residues
The lib files are parsed with ParmEd, and the rdkit molecule is created by a constructor in chemtempgen. It should be noted that **Amber OFF lib is not the ideal file type to generate a residue's Smiles**, as the valence and formal charge are not available from the files. A graph-based method is used to guess double bonds with some hints from atom types. Contrary to the processing of chemical components from CCD, no deprotonation occurred in the processing of Amber residues. 

- Suffix explained
```
        "NLE": ["NLE", "NLE_N", "NLE_C", "NLE_fl-ccd", "NLE_C-ccd"],
```
NLE: Residue NLE from Amber lib, forged into the embedded linking fragment
NLE_N: Residue NLE from Amber lib, as an N-term residue
NLE_C: Residue NLE from Amber lib, as a C-term residue. This variant usually has C(=O)[H], because residues from Amber usually do not have a full carboxylate/phosphate group. 
NLE_fl-ccd: Residue NLE from CCD, in the free-ligand form. No embedding was made
NLE_C-ccd: Residue NLE from CCD, as a C-term residue. This variant usually has C(=O)[O-]

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2dd4c5f1a2d8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.