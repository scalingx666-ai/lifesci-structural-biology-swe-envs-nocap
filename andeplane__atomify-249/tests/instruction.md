# Issue

**Title:** Fix ts-ignore comments

## Description

Remove `//@ts-ignore` comments and improve TypeScript typing for better type safety.

This PR addresses several typing issues, particularly around `easy-peasy` store access and global `window` properties, to eliminate the need for `//@ts-ignore` comments and enhance code reliability.

---
<a href="https://cursor.com/background-agent?bcId=bc-1c69bb76-2de0-484e-a79d-b51dd9c77a1b"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-cursor-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-cursor-light.svg"><img alt="Open in Cursor" src="https://cursor.com/open-in-cursor.svg"></picture></a>&nbsp;<a href="https://cursor.com/agents?id=bc-1c69bb76-2de0-484e-a79d-b51dd9c77a1b"><picture><source media="(prefers-color-scheme: dark)" srcset="https://cursor.com/open-in-web-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://cursor.com/open-in-web-light.svg"><img alt="Open in Web" src="https://cursor.com/open-in-web.svg"></picture></a>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f41715ded82b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.