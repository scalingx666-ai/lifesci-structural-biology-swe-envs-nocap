# Issue

**Title:** Fix deserialization of `WindowState::screen_rect` when it contains any `f32::INFINITY` values.

## Description

Make sure to fix your last serialized app state by setting `screen_rect: null`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ea8812738495`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.