# Issue

**Title:** [bug] Absolute pdb path

## Description

Unfortunately  was clearly never tested, because `get_pe_debug_infos` still returns 3 values, but it's unpacked into 2 values.

This also fixes a bug where a full path to the PDB was being passed to the server. If you have `C:\projects\my.pdb` in the PDB path the symbol server expects you to request `my.pdb`, not the full path.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `639ac32d1446`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.