# Issue

**Title:** Prevent division by zero when tab bar width is 0

## Description

Basically, in `DockArea::tab_bar_scroll`, the scrolling coefficient is determined by a calculation which involves division by the available width. The problem is that when the available width is 0, the division results in infinity which is later multiplied by 0, and that produces a NaN here:

```rs
*scroll -= scroll_bar_handle_response.drag_delta().x * points_to_scroll_coefficient;
```

The `scroll` coefficient is later used all over the tab bar code, which spreads the NaN like a disease.

My fix for this is basically just turning off all tab bar code when the width is 0.

I also did a bit of clean-up: the `Response` returned from `DockArea::tab_bar` is only ever used to obtain the occupied `Rect`, so I made the function just return the `Rect` instead.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3692f8341efd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.