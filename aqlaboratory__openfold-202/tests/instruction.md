# Issue

**Title:** Minor fixes in setup scripts

## Description

Fixing a few very minor issues I encountered setting up openfold using the instructions in the README:
* Disable SSL certificate checking for a few domains that were giving me issues
* Handle an error case in scripts/utils.py get_nvidia_cc more gracefully
* Unzip uniref30_2103.tar.gz after download

Also, I changed numpy.int to builtin int (numpy indicates this is always safe) in residue_constants.py to get rid of a deprecation warning while running unit tests

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ea9c9e4c563`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.