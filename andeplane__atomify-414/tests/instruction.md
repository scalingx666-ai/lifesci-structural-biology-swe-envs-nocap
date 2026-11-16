# Issue

**Title:** feat: compact the project and run headers

## Description

More viewport, less chrome on the run screen:

- Breadcrumb moves inline with the title — one header row instead of two
- Title 21px → 17px, header top padding 18px → 10px
- Quick-run banner becomes a slim single-line strip
- Tabs: padding 10px → 7px, gap above 14px → 6px
- Run sub-header (Back/Run #/Stop row) vertical padding 12px → 7px

Roughly 70px of vertical space returned to the simulation. All testids unchanged.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b56d248ab9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.