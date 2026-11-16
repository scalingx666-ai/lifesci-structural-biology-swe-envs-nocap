# Issue

**Title:** python3 port

## Description

Ports to Python3 and fixes some additional issues (see commit messages). 

I have tested restrain_ligand and restrain_bodies on the cases available to me. It would be great to test all the scripts on the data sets you may have from the previous dev work on this.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9a08ad3bc3bb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.