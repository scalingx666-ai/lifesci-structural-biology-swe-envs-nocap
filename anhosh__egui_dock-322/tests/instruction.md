# Issue

**Title:** Hiding tab bars

## Description

This adds the option to hide/show tab bars for a given leaf, see 

- Adds hidable_tab_bars option to DockArea that enables tab bars to be hidden per-leaf.
- When hidden, the tab body's top inner margin acts as a drag handle for the active tab, with the same grab/grabbing cursor behavior as regular tabs.
- A configurable triangle button in the top-left corner allows showing the tab bar again.
- Right-clicking the top margin also provides a "Show tab bar" context menu.
- When a tab is dragged out of a leaf with a hidden tab bar, the tab bar automatically unhides so remaining tabs stay accessible.

`TODO`
- [x] Consider adding an example to demo the new feature.
- [x] Consider whether a setting to disable dragging via the top margin would be needed.

Note:
I think there should be an interface to display a custom button in place of the triangle, but that would better to include in a PR later on that adds custom button UI for _all_ the buttons.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aa184bcf8ebb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.