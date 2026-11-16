# Issue

**Title:** Improve neighbor list behavior and safety with non-cubic unit cells.

## Description

This PR adds some extra functionality to neighbor lists and cell lists to make them safer, particularly with noncubic unit cells. For the moment, this code is limited to box matrices that are upper-triangular (which should always be possible to construct via a rotation).

Increased safety is enabled by adding a variety of error codes that get updated in the `NeighborList` type. These error codes are accommodated by a single uint8 with each of the eight bit fields being used to represent one error type.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37271cf305a1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.