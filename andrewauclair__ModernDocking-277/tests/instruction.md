# Issue

**Title:** Issue #267 - Use TOP_ALWAYS Instead of TOP in `Settings.alwaysDisplayTabsMode` and `setAlwaysDisplayTabsMode`

## Description

alwaysDisplayTabsMode and setAlwaysDisplayTabMode should have used TOP_ALWAYS instead of TOP.

When we remove these older functions, we might need to improve the API more to distinguish the uses of TOP_ALWAYS and BOTTOM_ALWAYS vs TOP and BOTTOM. At least document that they are ignored for individual dockables. Those should use TOP and BOTTOM.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2e33614f3e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.