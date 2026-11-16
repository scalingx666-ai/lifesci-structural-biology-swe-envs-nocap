# Issue

**Title:** Crop a DensityMap using a particle set

## Description

Allows cropping of an em:: DensityMap (such as a read-in .mrc file) using a
set of particles as the mask.

Voxels farther than the inputted distance threshold to all the particle
centers are set to a value of zero.

Setting "inverse" to false results in any voxels within the distance
threshold to any particles set to a value of zero.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ba7974c3980`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.