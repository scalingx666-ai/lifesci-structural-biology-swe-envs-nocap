# Issue

**Title:** Added rules to distribute share/ directory on 'make install'

## Description

Running 'make install' from either the git source or the distribution does not copy the data files in share/ and makes it harder to link to these when running the code. I hacked my way through the other Makefile.am files to make these changes, so it would be nicer if another (more experienced) pair of eyes could go over them!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c94370bf8c7c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.