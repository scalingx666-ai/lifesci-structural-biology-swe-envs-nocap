# Issue

**Title:** Fix JAX deprecations

## Description

The following deprecations have been deleted in JAX:

- jax.experimental.maps
- jax.experimental.mesh_utils

Also, I made a minor change in the README

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7fdbba140884`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.