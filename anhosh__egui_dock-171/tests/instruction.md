# Issue

**Title:** Fix for bug #168

## Description

fixes bug  #168, by always ignoring window hovers when the dragging tab a non window tab. This fades all windows and only allows main surface leaves to gather "preference" from the dragged tab.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d818a3a76902`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.