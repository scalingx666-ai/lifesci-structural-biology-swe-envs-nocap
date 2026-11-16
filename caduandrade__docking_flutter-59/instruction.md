# Issue

**Title:** fix: defer drop-position setState to avoid mutation during layout pass

## Description

## Problem

When dragging a tab over a split-view pane, `onWillAcceptWithDetails` on the
`DragTarget` inside `ContentWrapperBase`'s `LayoutBuilder` fires synchronously
during Flutter's layout phase. The listener callback immediately calls `setState()`,
which marks a sibling pane's RenderObject as needing layout while the current
`LayoutBuilder` is still in `performLayout`. Flutter asserts in debug mode:

> A _RenderLayoutBuilder was mutated in _RenderLayoutBuilder.performLayout.

Reproducible with two panes in split view — drag any tab a couple times (fast): sometimes it fires.

## Fix

Wrap the `setState` in `SchedulerBinding.instance.addPostFrameCallback` in both
`DockingItemWidgetState` and `DockingTabsWidgetState`. This defers the state
update until after the current frame's layout and paint are complete.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6185ab4334e9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.