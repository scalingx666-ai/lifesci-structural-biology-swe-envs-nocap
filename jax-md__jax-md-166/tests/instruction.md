# Issue

**Title:** Improve neighbor list overflow checking.

## Description

Previously, neighbor lists checked to ensure that the number of neighbors per particle did not exceed the maximum allocated capacity. However, neighbor lists use cell lists in an intermediate step to compute the set of neighbors for each particle by looking only in a local region (allowing the algorithm to scale in approximately O(N) time). However, it was possible in some cases for the cell list to overflow without the neighbor list overflowing (as is the case, for example, in #165). 

This PR modernizes the cell list code to mirror the neighbor list implementation (separating the allocation and update)  and adds overflow checking to the cell lists. With this change, the neighbor list code can now check for overflows in the cell list as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e0c33a032543`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.