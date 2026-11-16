# Issue

**Title:** Small fixes for ligand preparation

## Description

This PR has some small fixes related to ligand preparation, aiming to close the following tickets: 

- Include the fix suggested by @proline8314 in #142. 
- As suggested in #64 and @diogomart , mk_prepare_ligand.py will return non-zero exit codes if it fails to generate some (or any at all) PDBQT files for some molecules. 
- To address the request to preserve the ligand name in #50, mk_export.py will perceive the ligand name from the source (PDBQT, DLG) filename as usual and write to SDF file. No change in REMARK lines.
- Very small additional protection to mk_prepare_ligand.py: ensure opened file closure; check if mol is None before calling mol.GetProp and such

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ac9aac7efd21`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.