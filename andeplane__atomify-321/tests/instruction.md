# Issue

**Title:** feat: decompose App.tsx into theme, useMenuItems, and AppModals

## Description

## Summary
- Extract theme configuration into `src/theme.ts`
- Extract menu items logic into `src/hooks/useMenuItems.tsx`
- Extract modal components into `src/components/AppModals.tsx`
- Simplify `App.tsx` to focus on layout and routing

## Test plan
- [ ] Verify app renders correctly with all modals and menus
- [ ] Check theme applies properly

🤖 Generated with [Claude Code](https://claude.com/claude-code)

> Part 2 of a 9-PR stack (based on #320)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb3a305f2bed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.