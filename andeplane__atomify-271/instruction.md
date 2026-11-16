# Issue

**Title:** Update mixpanel types

## Description

Remove deprecated `@types/mixpanel-browser` and update `mixpanel-browser` to the latest version, including a fix for a related TypeScript error.

The TypeScript error in `src/store/simulation.ts` was a pre-existing type assertion issue where `value` was incorrectly asserted as `number` when `property === "color"`, instead of `GroupColorType`. This was fixed to ensure the project typechecks correctly after the dependency updates.

---
<a href="https://cursor.com/background-agent?bcId=bc-36ae5706-b095-4f73-9a20-bcd20cc7c618"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-cursor-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-cursor-light.svg"><img alt="Open in Cursor" src="https://cursor.com/open-in-cursor.svg"></picture></a>&nbsp;<a href="https://cursor.com/agents?id=bc-36ae5706-b095-4f73-9a20-bcd20cc7c618"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-web-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-web-light.svg"><img alt="Open in Web" src="https://cursor.com/open-in-web.svg"></picture></a>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd7808de3b5b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.