# Issue

**Title:** Add the NodeIndex to context_menu() parameter list

## Description

### Problem to solve

I use the `context_menu(...)` function so display options for splitting the current window. To call the `split(...)` function, I need to know the `parent` node. However this is not available at the moment.

I tried using the `focused_leaf(...)` function, but depending on the mouse position the split goes into the wrong parent.
![Splitting-focused-leaf](https://github.com/Adanos020/egui_dock/assets/17766093/a913d77a-30ef-4a54-bb0f-c695a8c01e0d)

### Solution in this PR

Pass the `NodeIndex` to the `context_menu(...)` function, the same way as it is done in the `on_add` function.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9b325dfd7342`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.