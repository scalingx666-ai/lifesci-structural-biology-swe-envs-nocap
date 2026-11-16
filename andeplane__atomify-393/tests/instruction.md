# Issue

**Title:** metrics: restore a privacy-safe simulationId on the run events

## Description

## Why

The Mixpanel dashboard broke with the July 12 deploy. Per-widget findings:

- **DAU flatlined**: the card is "DAU of `MenuClick`", and `MenuClick` was removed with the old menu UI (d9ba37f). Dashboard-side fix: rebase DAU/WAU/MAU on `Page.Load`.
- **"Run in cloud" dead**: `RunInCloudSurvey` and the button were removed. Dashboard-side: delete the card.
- **"Simulations" card all "(not set)"**: it groups `Simulation.Start` by `simulationId`, which e3bb305 wrongly stopped sending. That removal is reverted here — the identity data belongs in Mixpanel.
- `Simulation.Start`/`Stop` were never renamed and still fire once per engine run.
- `?examplesUrl=` custom example sets still work end-to-end (confirmed live).

## What

Send `simulationId` again, with the real identity:

- `Simulation.Start` / `Simulation.Stop` carry `simulationId` = the curated example id (from the project's persisted `source.exampleId` provenance) when the project came from the example library, else the project dir name.
- `Run.Start` / `Run.Finish` carry the example provenance as `exampleId`.

The existing "Simulations by simulationId" card works again with no dashboard changes. `errorMessage` remains excluded (it quotes script content) — say the word if you want that back too.

## Tests

- User projects: `Simulation.Start`/`Stop` send the project dir name as `simulationId`; `errorMessage` never sent.
- Example-sourced projects: `simulationId: "watervapor"` on `Simulation.Start`/`Stop`, `exampleId` on `Run.Start`/`Finish`.
- `vitest` (41 tests in the touched suites), `tsc --noEmit`, `prettier --check` all pass.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `766e9ebce292`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.