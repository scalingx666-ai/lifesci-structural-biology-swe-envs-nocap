# Issue

**Title:** chore(deps-dev): upgrade typescript 4.9 -> 5.9

## Description

Deliberate TypeScript 4.9.5 -> 5.9.3 upgrade, replacing dependabot's declined 4.9 -> 7.0 jump (#384).

- Typecheck clean, 459/459 tests pass, production build succeeds
- Unblocks #383 (@types/node 26), whose declaration files use syntax TS 4.9 cannot parse

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `371bba645db4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.