# Issue

**Title:** Keepmod flag keeps modified residues in the receptor

## Description

If the keepmod flag is used, plip considers modified residues not only as ligands but also as part of the receptor.

This is particularly important for protein-protein interactions since many involve modified residues (phosphorylated, acetylated, ...). An example that demonstrates the changes in the code is PDB ID 6MET together with the chains flag 
--chains "[[B], [G]]", where sulfated tyrosine residues are crucial for the protein-protein interaction.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fcf8da8eb163`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.