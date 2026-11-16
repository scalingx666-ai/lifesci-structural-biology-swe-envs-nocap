# Issue

**Title:** feat: deduplicate Compute/Fix/Variable types with generic ModifierData

## Description

## Summary
- Introduce generic `ModifierData<K>` base type to eliminate duplication between Compute, Fix, and Variable types in `types.ts`
- Reduces ~30 lines of duplicated type definitions to ~5 lines

## Test plan
- [ ] Verify TypeScript compilation passes
- [ ] Verify existing tests still pass

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 9 of a 9-PR stack (based on #327)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e2608a848823`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.