# Issue

**Title:** Added share folder to hold config files. Included NACCESS configs

## Description

Here's the file, I guess it's easier through a PR.

Using this config file to calculate ASAs on the test file (3bzd.pdb) with the same parameters as NACCESS (-L -d 0.05) gives a pearson's r of >0.99. The faster SR algorithm gives also an r of >0.99.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9629b64a2806`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.