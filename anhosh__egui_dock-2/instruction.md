# Issue

**Title:** Refactoring, fixing behaviour and more.

## Description

## Added

- `StyleBuilder` for the `Style`
- New fields `separator_color`, also added `border_color` and `border_size` for the cases when used `Margin`

## Changed

- Now when you drag a tab it has an outline along the entire length of the edges of it
- Bumped MSRV to `1.62`

## Fixed

- Now selection color of the placing area for the tab isn't showing if the tab is targeted on its own node when the tab is the only member of  this node

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6a94dd101fe5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.