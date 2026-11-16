# Issue

**Title:** Correct small runtime bugs for PDB residue plDDT annotating in `inference.py`

## Description

* Corrects small runtime bugs for PDB residue plDDT annotating in `inference.py`
* Now, the code has been runtime-tested :)
* Also increased the number of plDDT digits exported in the output filenames (when `rank_outputs_by_confidence` is `True`) to 7 digits rather than 4 (as I noticed the average plDDTs are often quite close in value to each other)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `be43cf5ee9bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.