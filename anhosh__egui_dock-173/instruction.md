# Issue

**Title:** Fix for issue #172

## Description

removes the a check that prevented users from rearranging tabs in the node they reside in. 

Now in order for the user to "regret" a move in the middle of an undock while in the widgeted overlay style would be to move the tab to the center overlay icon.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `deaf0ffb48e4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.