# Issue

**Title:** feat: replace window globals with importable module singleton

## Description

## Summary
- Replace `window.wasm`, `window.cancel`, `window.syncFrequency` globals with an importable `wasmInstance` module singleton
- Remove corresponding `global.d.ts` declarations
- Update all consumers (Simulation, Main, AutoStartSimulation, stores, hooks)
- Add tests for the wasm instance module

## Test plan
- [ ] Verify WASM initialization still works
- [ ] Verify simulation start/stop/cancel works
- [ ] Run wasmInstance tests

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 5 of a 9-PR stack

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `49e958844e73`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.