# Issue

**Title:** projects: resolve the metrics identity once, on the RunRequest

## Description

. Replaces #399 (closed by GitHub when its stacked base branch was deleted on the #393 merge).

The run identity reached Mixpanel through two parallel channels: `executeNextRun` re-read and re-parsed `project.json` on every run (N identical IndexedDB reads per sweep, duplicating the storage layer's byte-decode logic) to get `exampleId`, while the materialized `Simulation` carried `metricsId` separately.

- `RunRequest` gains `exampleId`, stamped once in `startRuns` where `active.meta` is already in memory.
- `executeNextRun` drops the per-run storage read entirely; `Run.Start`/`Run.Finish` and the Simulation's `metricsId` all use the request field.
- The byte-form decode concern from the #393 review disappears with the read itself.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bace3687a7ef`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.