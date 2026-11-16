# Issue

**Title:** IO for writing MD trajectories to xyz file format for visualization.

## Description

The current implementation writes array (per-atom quantities) like position, velocity, atom type, and force, etc. to a text file.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0a61f60f8962`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.