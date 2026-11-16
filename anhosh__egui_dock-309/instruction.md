# Issue

**Title:** fix: prevent panics when shrinking window to zero space

## Description

### Description
When the window is shrunk to extreme sizes, the available space drops to `0.0`, triggering two panics:
1. `rect is nan in advance_cursor_after_rect` (caused by division by zero when calculating separator fractions).
2. `assertion left != right failed` (caused by `assert_ne!(available_width, 0.0);` in the tab bar scroll logic).

### Solution
Instead of panicking or propagating `NaN` boundaries, the layout now simply skips drawing if there's no space.

* Added an early return in `show_leaf` and `tab_bar_scroll` if `available_width` or `height` is `<= 0.0`.
* Guarded the `split.fraction` math behind `if range > 0.0` to prevent `delta / 0.0`.

Tested locally with `cargo run --example hello`. The window can now be shrunk to zero without crashing.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5868f3f6ad29`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.