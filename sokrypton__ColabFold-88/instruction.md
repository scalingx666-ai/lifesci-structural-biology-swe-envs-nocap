# Issue

**Title:** Support multimer for FASTA input format

## Description

The multimer did not work me for FASTA input until I did this change (copying from the csv block).

You can ignore colabfold_batch but would be useful to have similar script in the top directory for those running from the repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bb2cc97e5b8d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.