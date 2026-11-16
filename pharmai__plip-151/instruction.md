# Issue

**Title:** Fixes a mistake in hydrogen bond acceptor identification

## Description

Ligand structures in PLIP do not contain hydrogens. While this was accounted for in donor detection (hydrogens are obviously needed there) this was not the case for acceptor detection. However, as [OpenBabel checks the degree of the atom to determine its availability as an acceptor](https://github.com/openbabel/openbabel/blob/32cf131444c1555c749b356dab44fb9fe275271f/src/atom.cpp#L1829), the hydrogens are needed there as well.

This pull request fixes the issue and

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f3cbb7542fd8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.