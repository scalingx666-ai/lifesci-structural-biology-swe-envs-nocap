# Issue

**Title:** add ketopyranose to ResidueInfo and ChemLink::Group

## Description

Now monomer library has ketopyranose group, and gemmi could not identify e.g. ALPHA2-3 link as seen in SIA-GAL of 6xtg.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c29605e5a98`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.