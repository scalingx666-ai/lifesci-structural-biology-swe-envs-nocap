# Issue

**Title:** refactor: add collapsed state and minimize button to SimulationSummaryOverlay

## Description

## Summary

Refactors SimulationSummaryOverlay component to support collapsed/expanded states with a minimize button.

## Changes

- Add support for collapsed/expanded state with `isCollapsed` prop
- Add `onExpand` and `onCollapse` callbacks for state management
- Replace close button with minimize button (MinusOutlined icon)
- Position minimize button absolutely in top-right corner
- Make `onShowMore` prop optional for mobile views
- Fix embedded mode desktop overlay to start expanded (matches non-embedded behavior)

## Behavior

- Desktop: overlay starts expanded, can be collapsed
- Mobile: overlay starts collapsed, can be expanded
- Embedded mode: respects desktop/mobile distinction for initial state

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ec26a9706af0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.