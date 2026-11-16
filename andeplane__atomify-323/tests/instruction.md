# Issue

**Title:** fix: improve Modifier base class and deduplicate Props interfaces

## Description

## Summary
- Make `Modifier.run()` throw on unimplemented subclass instead of silently no-op
- Deduplicate Props interfaces across sync modifier subclasses
- Add modifier base class tests

## Test plan
- [ ] Run modifier tests
- [ ] Verify all sync modifiers still function correctly

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 4 of a 9-PR stack (based on #322)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c35954aa234a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.