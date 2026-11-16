# Issue

**Title:** Fix dashed bond edge cases and stabilize dash generation

## Description

- Fixes calculateDashes() producing NaN/Infinity for short bonds when gap length collapses.
- Stabilizes dashed bond rendering for fractional/aromatic bond orders.
- No intended visual changes for normal bonds; prevents corrupted geometry in edge cases.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1cf3ba01f28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.