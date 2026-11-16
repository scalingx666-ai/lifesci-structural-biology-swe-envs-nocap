# Issue

**Title:** Update nucleotide templates, add NAKB_templates.json

## Description

This PR includes two changes: 
- Minor updates in nucleotide templates `residue_chem_templates.json`
The phosphate capping groups (*p*), and the two molecular (ligand) forms of nucleotides are dropped. They aren't currently used for template matching. 
 
- Add `NAKB_templates.json` 
This is a ready to use additional chemical template file. It includes up to four variants of the 5',3'-linking fragments for individual standard and nonstandard nucleotides. 

Currently the additional JSON file has 1778 templates for 453 residues

All nucleotides (824) from the [NAKB modified nucleotide pool](https://nakb.org/modifiednt.html) were considered. The Python script to make is [here](https://github.com/rwxayheee/gemile/blob/main/from_NAKB.py). A nonstandard nucleotide / a template is dropped if: 
- Is tagged `not mappable` by NAKB
- Contains unsupported elements
- Has a bad definition CIF file, and created rdkit molecule can't be sanitized or has implicit hydrogens
- Does not fall within some safe nets to ensure the uniqueness of matching and deleterious editing
- Is redundant (has the same smiles and atom_name) under the same parent
- Won't pass Meeko template check for other reasons (very very few cases)

Without further optimization it takes about 0.15 seconds per nucleotide to fetch the definition, process and write a template file (1-4 variants) on a Mac. It might be possible to integrate the process with prepare_receptor in future. But for the time being, I hope the additional chemical template file can help users who work with RNA/DNA systems where nonstandard nucleotides are present


08d7575 Added a few templates that went missing because of network issue

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `75305727874c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.