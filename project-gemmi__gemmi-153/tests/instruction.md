# Issue

**Title:** add ignore_unknown_links to prepare_topology/initialize_refmac_topology

## Description

Topo::initialize_refmac_topology adds bonds to monomer library if the link is not defined. This PR is to make it optional.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `60a1b31e3fa9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.