# Issue

**Title:** createsubdb works with list like 0\n1\n0\n2

## Description

In the previous code, after first `mmseqs createsubdb list in out`, the out.index file is sorted by the first column.
If someone wants to create a subdb with a list like 0\n1\n0\n2\n0\n3, sorting out.index by the second column and using it as input for the subsequent createsubdb commands will work.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1d17b4302ab3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.