# Issue

**Title:** Fix race condition in fillGhostCells in ICM_Compressible when walls are present

## Description

In the presence of walls in the Z direction. The ICM Compressible module will constantly fill the ghost cells with periodic information.
When walls are present in the Z direction, the wall object is asked to fill the ghost cells for the first and last layers AFTER the ghost cells for the volume have been periodified.

There was, however, no synchronization between ghostifying the volume and applying the wall conditions. This only matters in the 8 corners of the domain, were the wall requires all other ghost cells to have been filled already.


This PR fixes it by synchronizing between the two steps.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8808e9771d70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.