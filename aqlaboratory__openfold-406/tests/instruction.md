# Issue

**Title:** Update multi-chain permutation and permutation unittest

## Description

Hi @christinaflo  and @jnwei 

Sorry I forgot to update the unittest for multi-chain permutations after the major updates on the functions. Here I have added necessary steps to prepare fake test data for testing these functions.  Now all the 3 tests can run successfully. Hope it helps.

BTW I'm now adding typing to the functions in multi_chain_permutation.py and fixing some comments in that file as well. These can however go to another PR if you prefer?

Dingquan

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2625e0b29ecd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.