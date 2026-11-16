# Issue

**Title:** feat: collapsible sidebar

## Description

The left sidebar can now collapse to a 64px icon rail via a chevron toggle next to the logo, giving the simulation the horizontal room. Collapsed mode keeps everything reachable: nav icons + project color dots get tooltips, the running pulse moves to a corner badge, the footer becomes a theme-flip button + settings icon. The choice persists in localStorage (`atomify_sidebar_collapsed`).

Covered by a new Shell integration test (collapse → rail, persist, expand).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b56d248ab9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.