# Issue

**Title:** Implement random rotation to ASE integrators

## Description

As stated in title. Uses `Rotation` from `scipy.spatial.transform`. Function tested to work fine.

Note that I have tried to prevent error build-up in the cell by saving old cell and then just feeding that to the new system.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95d1e5d177d0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.