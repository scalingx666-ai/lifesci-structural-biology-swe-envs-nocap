# Issue

**Title:** fix: remove unsafe any casts in simulation.ts and View.tsx

## Description

## Summary
- Replace `as any` casts in `simulation.ts` with proper typed alternatives
- Fix unsafe cast in `View.tsx`

## Test plan
- [ ] Verify TypeScript compilation passes
- [ ] Run existing tests

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 1 of a 9-PR stack

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9adc239323c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.