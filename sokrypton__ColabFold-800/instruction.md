# Issue

**Title:** Corrected checking wrong argument

## Description

Due to the mistake I made implementing AF3-json format, some intermediate msa files remain undeleted after colabfold_search. I corrected it to check unpack argument instead and now all the intermediate msas are deleted.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `77a8204c17e9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.