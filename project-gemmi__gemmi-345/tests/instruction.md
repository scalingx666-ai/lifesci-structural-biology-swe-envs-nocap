# Issue

**Title:** Solvent mask partial occ 202410

## Description

New features to create non-binary masks when dealing with partial
occupancies and alternate conformations.

The new command-line argument (to "gemmi mask") --set-occupancy triggers the switch from a binary (0,1) mask computation to one that accommodates partially occupied atoms. In that case we need to loop over all atoms and find (for each grid point) the maximum occupancy of any atom hitting it.

To accommodate the current method of running a flood-fill algorithm (for island remvavl), we need to create an intermediate binary grid ... at least that is the way I found it to work.

There might easily be more elegant ways of doing some of this, but the bottom line is: it seems to work and do exactly what is wanted and therefore improves the computation of the bulk solvent contribution during refinement ... at least for BUSTER (https://www.globalphasing.com/buster/)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce3b6dfd3cd5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.