# Issue

**Title:** fix: replace string-based modifier filtering with instanceof checks

## Description

## Summary
- Replace fragile string-based modifier type filtering with `instanceof` checks
- Affects SimulationSummaryContent, SimulationSummaryExpanded, View, ColorModifierSettings, processing, and simulation stores

## Test plan
- [ ] Verify modifier filtering works correctly in simulation summary
- [ ] Run existing View tests

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 3 of a 9-PR stack (based on #321)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `833fede9f267`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.