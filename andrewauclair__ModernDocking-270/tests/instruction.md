# Issue

**Title:** Issue #265 - Fix NullPointerException in FloatListener

## Description

No longer invoking updateFramePosition later. This should prevent a situation when the drag has ended and the floating frame no longer exists. Perhaps it'll smooth out the UI too.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ab645b05a445`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.