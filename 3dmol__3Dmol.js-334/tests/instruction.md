# Issue

**Title:** Bug Fixes

## Description

Background color for split viewer works now. This should close issue #285 and builds upon #332. Overrode the first parameter for spin. You can now supply only an array, axis or dictionary. true defaults to 'y'. Interval is no longer there; it now defaults to 25. Speed is defined by the axis such that [2,0,0] moves twice the speed on the x axis as [1,0,0].

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c8ccd2139681`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.