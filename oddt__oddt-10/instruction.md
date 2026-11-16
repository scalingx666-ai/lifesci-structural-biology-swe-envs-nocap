# Issue

**Title:** Experimental Vina support

## Description

This introduces internal Vina scoring function. It should:
- accurately reproduce Autodock Vina scores (partial and final)
- avoid doing additional I/O
- doesn't need to install Autodock Vina

Testing on PDBbind core set (R<sup>2</sup>):
- affinity: 0.9697 (probably due to num_rotors deviations)
- gauss1: 1.000
- gauss2: 1.000
- repulsion: 1.000
- hydrophobic: 1.000
- hydrogen: 0.9992 (slightly different donor acceptor definitions)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e379123d7efc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.