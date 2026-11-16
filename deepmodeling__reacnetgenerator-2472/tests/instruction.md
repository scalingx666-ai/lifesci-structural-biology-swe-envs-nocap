# Issue

**Title:** fix: avoid double-decoding jdata URLs

## Description

.

Read `jdata` through `URLSearchParams` once and pass the returned nested URL directly to `$.get()`. A small URL helper documents the decoding boundary and is covered with a nested URL containing `%25` and `%2F` escapes.

Tests: `yarn test` (5 passing)

Checks: `yarn dlx eslint@8.57.1 url.js reacnetgen.js test/test_url.js`; `yarn start` (webpack production build succeeds); `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56298871a0ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.