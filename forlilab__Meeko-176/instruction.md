# Issue

**Title:** Add nucleic acid residues to residue_chem_templates.json

## Description

This change is only about the chem templates (a data file). The existing nucleic acid residues data (ambiguous and residue_templates) were replaced. New data were generated from Chemical Component Dictionary (https://www.wwpdb.org/data/ccd) from a component cif file following [a gemmi -> rdkit -> json workflow](https://github.com/rwxayheee/gemile). 

The workflow might be useful to generate chemical templates for cofactors and other registered ligands for receptor and ligand preparation, when atom names are needed (to interface programs that need atom names for mapping like Amber). However, some more work is needed to enumerate protonation states, verify linker atoms, extend linking reactions, etc. 

Some example RNA receptors PDBQT with the modified data: 
[RNAReceptorPDBQT.zip](https://github.com/user-attachments/files/17157466/RNAReceptorPDBQT.zip)

They were prepared with `--allow_bad_res` to show normal template mapping vs. blunt end at linker atom vs. deletion. The examples include some special cases like (PDB 4LVZ) where X5 (5' end residue, typically a nucleoside - no phosphate) with an excess phosphate, which is termed X5p in the modified data. 

DNA receptors were not verified (I don't have examples on hand, but will do in the very near future!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `552abfa83e6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.