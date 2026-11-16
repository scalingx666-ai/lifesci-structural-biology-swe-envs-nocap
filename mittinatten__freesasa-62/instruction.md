# Issue

**Title:** fixed bug: unable to read cif that deviates from the pdb_id.cif format.

## Description

This should close issue #61 

It also addresses the issue where sometimes the `freesasa_node_atom_residue_number(atom)` returns a decimal string. I encountered this when I passed a cif file that I got as an output from the ChargeFW2 repo. I didn't realize that I patched that as well in this PR until now. Let me know if you would like that as a separate PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `27ad0e1de8a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.