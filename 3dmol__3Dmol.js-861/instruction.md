# Issue

**Title:** Reset picking shapes before frame rebuilds

## Description

## Summary

`GLModel.createMolObj()` rebuilds geometry for the selected frame, but previously left an initialized atom's picking-shape arrays intact. The sphere and bond builders append to those arrays, so revisiting a frame retained duplicate picking shapes. Reset sphere, cylinder, line, and triangle lists for clickable/hoverable atoms before rebuilding; non-interactive atoms are unchanged. The opt-in coordinate-replay path does not rebuild and is unaffected.

Related to #860. This change addresses retained picking arrays only; it makes no claim about the separate WebGL geometry-counter or VRAM observations, which were not measured.

## Validation

- Offline synthetic check: 200 alternating frame rebuilds kept each interactive frame's shape arrays bounded; also checked the reset runs before the geometry loop.
- `node --check` on the helper and Jest regression test; `git diff --check`.
- The committed Jest test and TypeScript/build pipeline were not run because dependencies are absent. The full `npm test` pipeline generates fixture render tests and runs `glcheck`; rendering, GPU/context access, and external molecular data are outside this task's limits.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cf6b68429dd9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.