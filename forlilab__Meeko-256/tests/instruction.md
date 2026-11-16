# Issue

**Title:** Revision of default templates: Fixes and Disambiguation for inconsistent residue names in CHARMM

## Description

The default template file was the only file that has been changed (regenerated), although the majority should look exactly the same. Reasons for revision and changes: 

1. Programmatic mistakes in bond perception causing potentially incomplete double-bond assignment 
-> No effects on the existing residues; luckily their conjugate systems are simple enough to reconstruct at the first attempt. 

2. Missing or mislabeled standalone (free-ligand) form of original Amber residues
-> The **original** standalone forms of the residues from the Amber OFF library are **now added first, followed by other distinct** embedded forms. This causes number of templates to go up a little bit, although the original forms are typically H-capped residues that are not biologically significant. 

3. Mending the safe control (allowed patterns), target patterns and fallback plans for structure editing
-> Many residues now have **an increased number of distinct embedded forms**. Those **should have been included** the first time, but were missing because the allowed patterns are not generic enough. A potentially important example is hydroxyproline (HYP). The embedded forms of HYP were added in this PR. 

4. Cleaning up the build function from Amber OFF libs for record purposes
-> A slightly more advanced version of chemtempgen.py lives in this [branch](https://github.com/rwxayheee/gemile/tree/for_amber); will not put in Meeko to avoid dependencies (parmed, networkx) that are unnecessary to Meeko and Ringtail. 

5. Explanation for some specific cases: 
- **CYF** contains a C#N that was perceived as [C+]=[N-] due to unexpected atom types in the input file. Because Meeko doesn't use bond order in template matching, for residues like these the generated Smiles strings are technically ok to use but may be chemically incorrect. One more example is 
- **2RG** contains two copies of editable backbones. Currently for residues like these, no embedding forms are made. 

6. Disambihguation for CHARMM27
-> It was first reported in #253 that Schrodinger might produce residues named RA, RU, RC, RG (in leu of A,U,C,G) but after some investigation these residue names are from CHARMM27. Edits were made to the ambiguous dict.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1cd72eb0e280`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.