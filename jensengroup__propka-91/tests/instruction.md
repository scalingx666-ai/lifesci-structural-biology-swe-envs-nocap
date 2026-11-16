# Issue

**Title:** Fix pI reporting in last line of .pka file

## Description

The string was missing `.format(pi_pro, pi_mod)`.

Since Python 3.6 is the minimum supported version for propka, I opted for [f-string syntax](https://docs.python.org/3/whatsnew/3.6.html#whatsnew36-pep498).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb65c644c6ca`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.