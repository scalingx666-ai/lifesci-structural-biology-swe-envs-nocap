# Issue

**Title:** add default_scale option to adjust_hydrogen_distances()

## Description

It would be convenient in case nucleus distances are not available in the monomer library. A good scale would be ~1.1 to electron distances.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cf8ca3997976`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.