# Issue

**Title:** fix: center dashed bonds

## Description

- Fix dashed bond centering by starting pattern with half-gap offset
  Pattern: [halfGap]-[dash]-[gap]-...-[dash]-[halfGap]
  Previously dashes started at bond origin, causing visual asymmetry

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0c54f7570fa9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.