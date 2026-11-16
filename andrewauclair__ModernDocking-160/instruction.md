# Issue

**Title:** JTabbedPane Key Binds

## Description

JTabbedPanes now work like they do in IntelliJ. Pressing alt + left will move to the previous tab and wrap around. Pressing alt + right will move to the next tab and wrap around. The JTabbedPane is no longer focusable, which will give focus to the components in the tab.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `683714203a1d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.