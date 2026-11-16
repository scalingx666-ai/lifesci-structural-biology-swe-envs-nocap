# Issue

**Title:** LAMMPS interface change (NOT backwards compatible!)

## Description

Changed the quip/lammps interface (the mechanism by which lammps can call quip potentials) so that quip also gets the persistent atom IDs.  This change is obviously not backwards compatible, so introduced another function lammps can call to determine the API version to make future changes easier - or at least less jarring for the end user.  The version number QUIP returns is an integer that should be manually incremented if (and only if!) the interface is changed in an incompatible way.

I propose that these changes only be merged once the next version of lammps releases, so we don't force our users to grab the git version of lammps.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b920dced2448`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.