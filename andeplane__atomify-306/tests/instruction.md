# Issue

**Title:** feat: add unit tests for View.tsx

## Description

## Summary

.

- **P0** – Auto-clear selection on simulation change: verifies `clearSelection` is called and `selectedAtoms` resets whenever the `simulation` store value changes.
- **P1** – Escape key: no-op when nothing selected; clears selection (and calls `visualizer.clearSelection`) when atoms are selected.
- **P1** – Embedded mode: no-simulation modal is suppressed when `isEmbeddedMode=true`.
- **P2** – localStorage: `showAnalyze` is read from localStorage on mount and written back when not in embedded mode; writes are skipped in embedded mode.
- **P2** – `embedConfig.showSimulationSummary` gates whether `ResponsiveSimulationSummary` renders in embedded mode.
- **P2** – `visualizer.idle` is toggled correctly by the `visible` prop.

## Mocking strategy

| Concern | Approach |
|---|---|
| `useStoreState` / `useStoreActions` | `vi.fn()` + mutable shared `mockState` object updated in `beforeEach`; selectors run against real state shape |
| `Visualizer` (omovi) | `vi.fn()` at module level; regular-function `mockImplementation` used in the Escape test so `new Visualizer()` succeeds |
| `antd` Layout / Modal / Button | Lightweight JSX stubs; `Layout.Header` attached as static property |
| Child components | Minimal stubs with `data-testid` attributes |
| THREE.js / geometry utils | Mocked to prevent WebGL errors in jsdom |
| localStorage | `vi.spyOn(Storage.prototype)` in a nested `beforeEach`/`afterEach` |

## Test plan

- [x] `npm test -- --run View` → 17/17 pass
- [x] Full suite (`npm test`) → 250/250 pass, no regressions

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `afe0a36f06b6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.