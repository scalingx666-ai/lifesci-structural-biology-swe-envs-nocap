# Issue

**Title:** Warp parallel

## Description

This PR implements a warp-level (sub-warp is also supported via the template parameter `TileSize`, but there is no perf gain) parallel algorithm for the Monte Carlo kernel.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f75e57ff09d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.