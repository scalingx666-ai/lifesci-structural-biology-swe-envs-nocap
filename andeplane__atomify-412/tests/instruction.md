# Issue

**Title:** fix: chart legend shows series names when not hovering

## Description

The dygraphs `legendFormatter` returned an empty string whenever `data.x == null` (no hovered point), so the `legend: "always"` box rendered as an empty rectangle. The legend now always lists the series names with their color dots; hovering additionally shows the values, exactly as before.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b56d248ab9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.