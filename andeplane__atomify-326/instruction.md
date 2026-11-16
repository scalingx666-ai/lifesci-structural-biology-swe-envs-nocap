# Issue

**Title:** feat: add tests for store slices, modifiers, hooks, and View

## Description

## Summary
- Add tests for store slices: settings, app, simulationstatus, processing, simulation, render
- Add tests for all sync modifier classes (particles, bonds, computes, fixes, variables)
- Add tests for useEmbeddedMode hook (parseVars, parseEmbedConfig, hook return shape)
- Fix type safety in View.test.tsx

## Test plan
- [ ] Run all new test files and verify they pass

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 7 of a 9-PR stack (based on #325)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f60e807c5a9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.