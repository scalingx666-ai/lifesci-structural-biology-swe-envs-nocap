# Issue

**Title:** Surface site classification (2nd attempt)

## Description

#437 is horribly out of sync, so here's a new PR instead. 

This PR adds an Analysis submodule HighSymmetrySites, which can be used to relate positions of adsorbates within a Periodic Cell to high-symmetry sites on the cell.

ToDo:

 - [ ] Document trajectory analysis.
 - [x] Ensure API docs automatically generate properly
 - [x] Unit tests functioning

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c9b0e063a318`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.