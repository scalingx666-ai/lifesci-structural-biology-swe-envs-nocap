# Issue

**Title:** Add T-S (2009) dispersion correction

## Description

Initially intended as a post-processing correction for DFT calculations.  This implementation requires relative Hirshfeld volumes to be supplied; they can come from an existing DFT calculation or some other source (e.g. fixed or interpolated).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `92944ed0bd22`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.