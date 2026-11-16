# Issue

**Title:** feat: fullscreen mode for the simulation viewport

## Description

Adds a fullscreen toggle to the run viewport (top-right, translucent button):

- Uses the native Fullscreen API on the viewport element; Esc exits as usual
- Falls back to a fixed in-app overlay (`position: fixed; inset: 0`) when the API is unavailable or denied, with its own Esc handler and a synthetic resize nudge for the canvas
- The script name/progress overlay and the toggle remain visible while expanded

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b56d248ab9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.