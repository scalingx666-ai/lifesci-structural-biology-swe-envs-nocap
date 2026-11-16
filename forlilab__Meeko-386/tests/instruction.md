# Issue

**Title:** Gasteiger charges working for Iron-Sulfur clusters

## Description

The RDKit implementation of Gasteiger charges does not have parameters for Iron, so Iron is removed, hydrogens are added (in a temporary molecule) to satisfy the valence left open by Iron, charges are computed on the temporary molecule, and then the charge of the added hydrogens is summed onto the Iron atom in the real molecule (in addition to its formal charge). This was working for heme. This PR enables the same idea to work for Fe-S clusters, by allowing more than one H addition per atom in the temporary molecule (in Fe-S clusters some Sulfurs will get two atoms). Also, some Sulfurs in the temporary molecule will donate the charge of their added hydrogens to more than one Iron, in which case this PR divides the donated charge by the number of donations, to avoid double counting.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `19cc0294c597`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.