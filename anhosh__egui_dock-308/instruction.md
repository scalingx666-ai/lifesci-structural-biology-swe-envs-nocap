# Issue

**Title:** fix: clamp tab index in move_tab to prevent out-of-bounds insert

## Description

## Summary

When reordering a tab within the same node via drag-and-drop, `DockState::move_tab` calls `remove_tab(src_tab)` **before** `insert_tab(index, tab)`. If the source and destination are the same node, this reduces the tab count by one — making the original destination `index` potentially out of bounds.

**Example:** A node has 3 tabs `[A, B, C]`. Dragging tab `B` (index 1) to position 3 (the end):
1. `remove_tab(1)` → node becomes `[A, C]` (count = 2)
2. `insert_tab(3, B)` → **panic**, index 3 > count 2

## Fix

Clamp the insertion index to the current tab count after removal. This is safe because inserting at `count` is equivalent to appending — which is the correct semantic for "move to the end".

## Test plan
- Drag a tab to the last position within its own node — no panic
- Drag tabs between different nodes — unchanged behavior
- Drag tabs to split positions — unchanged behavior

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9435524eb079`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.