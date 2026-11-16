# Issue

**Title:** fix: remove unused vars, memoize useEmbeddedMode, move notifications

## Description

## Summary
- Remove unused variables across multiple files
- Memoize useEmbeddedMode hook return values
- Move simulation notifications to state via new `useSimulationNotifications` hook
- Preserve created dates in processing store
- Drop URL hack workaround

## Test plan
- [ ] Verify notifications still appear correctly
- [ ] Run updated tests (simulation.test.ts, simulation-run-helpers.test.ts)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 8 of a 9-PR stack (based on #326)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f9ed64bc8195`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.