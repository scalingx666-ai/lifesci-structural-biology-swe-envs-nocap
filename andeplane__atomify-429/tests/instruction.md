# Issue

**Title:** Reduce simulation summary update overhead

## Description

Each simulation summary refresh previously dispatched separate actions for every field, repeatedly notifying all store subscribers. Publish one coherent status snapshot instead. Also compare the engine's row-major cell matrix correctly against THREE's column-major storage, so an unchanged triclinic box no longer causes repeated geometry updates.

.

Validation: TypeScript check, all 455 unit tests, production build. Replaced tests that duplicated the obsolete float64 algorithm with tests invoking the real processing thunk: coherent subscriber observations, float32 geometry, unchanged/changed triclinic boxes, WASM wrapper cleanup, and idle timing preservation.

A local synthetic benchmark with 1,000 updates, eight scalar fields and 25 subscribers dropped subscriber calls from 200,000 to 25,000 and elapsed time from 23.1 ms to 6.8 ms. This measures store-update overhead, not end-to-end simulation FPS.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0fd149dc339d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.