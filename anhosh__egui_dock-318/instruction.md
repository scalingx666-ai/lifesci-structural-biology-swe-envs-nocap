# Issue

**Title:** Fix Widget changed layer_id panic when undocking tabs (debug builds)

## Description

## Problem

The tab body Ui was constructed with an ID that didn't include the surface:
```rust
let id = self.id.with(tab_viewer.id(tab));
```
When a tab is moved to a floating window surface, both the main dock (Background layer) and the window (Middle layer) can render a tab body with the same ID in the same frame. egui's debug assertion then fires because it sees the same widget ID appearing in two different layers.

## Fix

Scope the tab body ID by surface:
```rust
fn tab_body_id(dock_area_id: Id, path: NodePath, tab_id: Id) -> Id {
    dock_area_id.with((path.surface, "surface")).with(tab_id)
}
```

This preserves the original property that tab IDs remain stable when a tab is moved between nodes on the same surface, while ensuring tabs on different surfaces get distinct IDs.

<img width="3137" height="1445" alt="PixPin_2026-04-15_00-29-26" src="https://github.com/user-attachments/assets/d950d4fc-95fa-4c3d-9085-a7c83c3485ec" />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bcaebb193429`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.