# Issue

**Title:** Use close_tab_bg_fill for close buttons

## Description

The close button was using the `style.buttons.add_tab_bg_fill` and while the associated `style.buttons.close_tab_bg_fill` was unused in the layout.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7a49e6cfa361`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.