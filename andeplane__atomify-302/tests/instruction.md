# Issue

**Title:** fix: cap lammpsOutput at 2000 lines to prevent memory issues

## Description

## Problem
`addLammpsOutput` was doing `[...state.lammpsOutput, output]` on every LAMMPS output line, causing:
- **O(n²) performance** — each append spreads the entire array
- **Unbounded memory growth** — no cap on how large the log buffer gets

For long simulations this becomes a real problem.

## Fix
Cap the rolling log buffer at 2000 lines using `.slice(-2000)`, keeping only the most recent output.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6711045fa785`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.