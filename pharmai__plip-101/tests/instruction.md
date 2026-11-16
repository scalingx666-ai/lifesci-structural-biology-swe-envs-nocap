# Issue

**Title:** Make --dnareceptor flag behave consistently

## Description

The --dnareceptor flag so far was intended to switch from protein to nucleic acids as the receptor molecule(s). However, for metal complexes and salt bridges interactions between ligands and protein residues were still showing up when using the flag. 

These changes tweak the flag's behaviour to allow it to switch from treating nucleic acids as ligands to treating them as PART OF the receptor - also keeping a potentially present protein as part of the receptor structure.

This behaviour is already implemented in the web tool. A use case, where this behaviour is handy, is the PDB structure 2e2h (GTP binds RNA polymerase II and DNA/RNA). The structure shows salt bridges and metal complexes between GTP and the protein when using the --dnareceptor flag without these changes, and in addition two hydrogen bonds with the protein when running plip with these changes.

I also adapted the documentation and hope I did not miss anything and the changes are correct.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6361c8d8d55a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.