# Issue

**Title:** topo: do not stop when monomer is not defined

## Description

I think it is useful not to throw an exception if monomer not found. We may need to show a warning, or make this behavior optional?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a5c4d2961af7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.