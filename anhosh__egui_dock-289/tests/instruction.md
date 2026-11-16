# Issue

**Title:** Make it so separators are always clamped between their bounds

## Description

As title says, splits are now clamped between their bounds on every frame. This makes it so weird split fractions which were created programmatically don't cause visual problems until the splits are interacted with by the user.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `78e53250e16d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.