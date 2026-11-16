# Issue

**Title:** Add units and notebook examples

## Description

This PR adds units and notebook examples. The units.py returns a dictionary of conversion factors which are then used in the simulation. Currently only real and metal units are present. The examples include the simulation of Silicon with the Stillinger-Weber potential in metal units.

I have tested this on BKS-Silica as well with the real units and will add a notebook example soon.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd74bc7ac4e0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.