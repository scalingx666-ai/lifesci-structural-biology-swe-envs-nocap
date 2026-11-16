# Issue

**Title:** simulation: metricsId is required — no silent fallback to the run path

## Description

. Replaces #398 (closed by GitHub when its stacked base branch was deleted on the #393 merge).

The `metricsId ?? simulation.id` fallback was dead code today, but any future caller that forgot to set `metricsId` would silently send per-run-unique `<dirName>/runs/run-NNN` paths as `simulationId`, fragmenting the Mixpanel per-simulation breakdown into one bucket per run.

- `Simulation.metricsId` is now required — the compiler forces every constructor to choose an identity.
- The track calls use it directly, no fallback.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bace3687a7ef`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.