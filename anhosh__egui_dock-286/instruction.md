# Issue

**Title:** Scrollable tabbar

## Description

Solving #285 
While rendering tab bar body I return `tab_hovered` from `tabs` function so it can be passed to `tab_bar_scroll` that handles scrolling. Thanks to that scroll event is handled when pointer points over tab body, while other events like drag and click are still handled properly on particular tabs.

I believe this is not a breaking change, just a minor fix, so I created PR directly to `main`. Looking at the code I assume that scroll was supposed to work this way from the beginning.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `afc4ab85b4d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.