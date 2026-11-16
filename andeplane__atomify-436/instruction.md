# Issue

**Title:** Continue completed simulations into linked runs

## Description

A completed simulation can now continue from its live engine state for a chosen number of additional timesteps. The continuation gets a new linked run and preserves the parent's inputs and outputs. It copies the parent's input snapshot even if the working tree has changed, and retains the existing engine directory so open dumps and fixes continue correctly.

Continue is available only for the last completed simulation still loaded in this browser session. A saved full-sequence input recipe lets the continuation be replayed after reload. Invalid/stale continuation requests are rejected before allocating a run or resetting the engine.

.

Validation: typecheck, 473 unit tests, production build, and a real-engine browser regression: a moving atom advances from step 10 to 30 (x=1.1 to x=1.3), the parent's trajectory stays byte-identical, and the full sequence replays after reload despite an invalid edit in the working tree. Store integration tests verify stale/invalid request guards, parent input preservation, and that continuation never calls engine start/reset.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bed088233434`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.