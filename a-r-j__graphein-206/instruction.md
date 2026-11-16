# Issue

**Title:** fix `nodes` index access for `coords`

## Description

fixes `KeyError` when using `graphein.protein.edges.distance.node_coords`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ae6ef9dd8a0e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.