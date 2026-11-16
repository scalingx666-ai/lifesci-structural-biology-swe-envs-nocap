# Issue

**Title:** Add many-body dispersion to QUIP

## Description

This links in the code from http://www.fhi-berlin.mpg.de/~tkatchen/MBD/ (patched version available in ThirdParty) to add the many-body dispersion energy (with predefined Hirshfeld volumes) as a QUIP potential.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3839cedb9b6f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.