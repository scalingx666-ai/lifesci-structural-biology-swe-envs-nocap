# Issue

**Title:** Implement add popups

## Description

This PR creates an `add_popup` method in `egui_dock::TabViewer`, which enables context-menu-like popups when clicking the add button. This is useful for selecting one of multiple tab types to add. 

There's a usage example:
```
cargo run --example tab_add_popup
```

![AddPopup](https://user-images.githubusercontent.com/7954699/200240549-d45071c1-5664-4894-990c-abcc0342e009.gif)


It uses a custom version of `egui`'s `popup_below_widget` because that implementation will fall outside of the window if it's near the bottom or right edge. The code for that comes from  All credit for it goes to @zicklag.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `645c621ec019`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.