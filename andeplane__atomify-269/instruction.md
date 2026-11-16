# Issue

**Title:** Added per atom color legend

## Description

Add a color legend and custom range controls for per-atom coloring to improve visualization and user control.

The existing per-atom coloring lacked a visual legend to indicate the value range and the ability for users to define their own min/max bounds. This PR addresses these limitations by providing a dynamic legend, tracking global min/max values over time, and adding controls for custom range definition and global range reset.

---
<a href="https://cursor.com/background-agent?bcId=bc-496d3ac9-e5ae-47aa-98e2-00a1112d9c50"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-cursor-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-cursor-light.svg"><img alt="Open in Cursor" src="https://cursor.com/open-in-cursor.svg"></picture></a>&nbsp;<a href="https://cursor.com/agents?id=bc-496d3ac9-e5ae-47aa-98e2-00a1112d9c50"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-web-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-web-light.svg"><img alt="Open in Web" src="https://cursor.com/open-in-web.svg"></picture></a>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dcf737c09dee`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.