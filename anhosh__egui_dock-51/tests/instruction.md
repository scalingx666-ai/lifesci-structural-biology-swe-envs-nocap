# Issue

**Title:** Fix: use the correct icon when dragging

## Description

Previously, you would have `CursorIcon::PointingHand` when hovering a tab title. When dragging a tab, you would get `CursorIcon::Grabbing`, but if you dragged a tab so it was hovering another title, it would go back to `CursorIcon::PointingHand`.

This PR changes the hovering cursor to `CursorIcon::Grab`. Additionally, it fixes the above bug so that `CursorIcon::Grabbing` is used all the while a tab is being dragged.

![tab-cursor-fix](https://user-images.githubusercontent.com/1148717/194847897-13b6098a-cc2c-4411-9881-55f244454823.gif)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5f5a877a34d1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.