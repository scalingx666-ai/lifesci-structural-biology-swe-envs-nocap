# Issue

**Title:** Dockables can now indicate their tab preference (TOP or BOTTOM)

## Description

If any dockables in a tab group prefer TOP tabs, then the tab group will switch to top tabs. The tab group will continue to be top tabs even after all the dockables with TOP as the preference have been removed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `69ce480ac18c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.