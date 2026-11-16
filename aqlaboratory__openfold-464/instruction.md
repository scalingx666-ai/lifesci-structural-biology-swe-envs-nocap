# Issue

**Title:** Fix 3-to-1 letter conversion to use extended mapping

## Description

In commit 02cb771 `SCOPData.protein_letters_3to1` got changed to `PDBData.protein_letters_3to1` due to deprecation of `SCOPData` in newer Biopython versions. However, compared to the previous `SCOPData` mapping, `PDBData.protein_letters_3to1` [is very minimal](https://github.com/biopython/biopython/blob/0f41262c84369ed6244d973ca2e893af35e4d387/Bio/Data/PDBData.py) and does not contain any non-standard amino acid conversions which will map all modified residues to `"X"`. Instead, `PDBData.protein_letters_3to1_extended` should come closer to the original functionality.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f6c875b3c8e3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.