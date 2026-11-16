# Issue

**Title:** Add tolerance for touch clicks

## Description

It can be difficult to keep your finger in exactly the right place when using a touch interface.
This PR adds a `closeEnoughForClick` which allows a delta when comparing the position against the mouseStart.

By default, it requires exact position for mouse and allows tolerance for touch events (events with targetTouches), but the caller can also specify if they want to allow or disallow the tolerance.

This function will be used in a followup PR for contextmenu events.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f5ff1cd65f4b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.