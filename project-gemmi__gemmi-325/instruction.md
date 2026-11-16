# Issue

**Title:** PyMol saves mmCIF without auth_seq_id, fall back to label_seq_id

## Description

I found that Foldseek does not extract any chains from PyMol exported mmCIF files. Tracking the issue down to gemmi seems to be due to gemmi requiring `auth_seq_id` to be present, but PyMol not saving it.

I tested the PR within Foldseek and everything works as expected.

I also attached a mmCIF file exported from PyMol that has the issue.

[pymol_wo_auth_seq_id.cif.txt](https://github.com/user-attachments/files/16139475/pymol_wo_auth_seq_id.cif.txt)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `67c5bc240c89`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.