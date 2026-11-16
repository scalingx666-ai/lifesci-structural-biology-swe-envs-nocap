# Issue

**Title:** Issue #391 - Fix Exceptions When Closing Inactive Tabs in JTabbedPane

## Description

Fixing exceptions caused by tabs and panels in DockedTabbedPanel becoming out of sync during listener calls. Also fixing a slight issue with the way hidden tabs are removed. The hidden flag was overloaded and had two meanings. This seems to indicate that we're using it for auto-hide and for shown/hidden events. A simple workaround has been added for now. A more permanents refactor should be done in the future.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `df35bbd2ea60`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.