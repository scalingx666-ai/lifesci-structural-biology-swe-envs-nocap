# Issue

**Title:** Allow wider MODEL field to increase maximum number of models

## Description

Increases the maximum model sequence number to 99999999 (almost 100 million).

The format of a MODEL record in a PDB file is specified as the string "MODEL ", some spaces and a 4-digit serial number. Due to the field width of four, the highest model number can only be 9999.  However, this causes issues for some generated PDB files, such as converted MD trajetories with more than 9999 frames.

This change "extends" the PDB format [specification](https://www.wwpdb.org/documentation/file-format-content/format33/sect9.html). This should be safe because previous behaviour is preserved for model numbers <= 9999 and only uses the space currently occupied by spaces between the MODEL string and the model sequence number.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `063651c79e94`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.