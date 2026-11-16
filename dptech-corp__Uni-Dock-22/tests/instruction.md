# Issue

**Title:** Hypnopump/rough edges

## Description

This PR adds some details to make installation easier, fix some import name mismatches, adds some checks so failures are more informative, and removes the need for openbabel for adding hs, as the molecule is already known.

Minor fixes, but i wondered they could be of use to someone

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a502462885ad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.