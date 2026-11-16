# Issue

**Title:** Issue #378

## Description

Fixing docking event when switching tabs. Add DockingListener to MainFrame example that prints all the events out, making them easier to verify. Switch to EXIT_ON_DISPOSE for MainFrame example.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03fe59ba50ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.