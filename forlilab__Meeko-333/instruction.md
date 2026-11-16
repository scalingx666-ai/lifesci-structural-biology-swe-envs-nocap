# Issue

**Title:** Rotatable terminal group option

## Description

Add option for making terminal groups (e.g. thiols, hydroxyls, amides) of select residues rotatable.

Performed manual testing to:
1. Confirm correct atoms are portioned between `_flex.pdbqt` and `_rigid.pdbqt` for each eligible residue
2. Confirm residue will be treated as fully flexible if specified with both `-f` and `-t`
3. Confirm error catching for ineligible residue specifications

In the process of testing that resulting docked poses are able to be re-stitched with flexres export

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `19cc0294c597`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.