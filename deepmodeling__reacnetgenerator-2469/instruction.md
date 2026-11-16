# Issue

**Title:** fix: clear every network node

## Description

.

Replace the broken `foreach` Clear implementation with a tested `clearGraph()` helper. The helper snapshots `graph.nodes()` before removal so it works safely even when node removal mutates a live collection.

Tests: `yarn test` (4 passing)

Checks: `yarn dlx eslint@8.57.1 graph.js reacnetgen.js test/test_graph.js`; `yarn start` (webpack production build succeeds); `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.