# Issue

**Title:** refactor: consolidate simulation summary components and add tests

## Description

## Summary

This PR consolidates the simulation summary components and adds comprehensive tests.

## Changes

- **Deleted** unused `src/containers/SimulationSummary.tsx` (no longer needed after removing the drawer)
- **Renamed** `SimulationSummaryOverlay.tsx` to `SimulationSummary.tsx` for clarity
  - Updated component and interface names
  - Updated imports in `ResponsiveSimulationSummary.tsx`
- **Added** comprehensive tests for `ResponsiveSimulationSummary` component
  - Tests cover all rendering scenarios (embedded/non-embedded modes)
  - Tests verify Expand button only appears on desktop
  - Uses type-safe mocks with `ComponentProps<typeof Component>`
- **Fixed** missing `AreaChartOutlined` import in `View.tsx`

## Testing

- ✅ All 9 tests pass
- ✅ TypeScript typecheck passes
- ✅ No linting errors

## File Structure

Final naming:
- `SimulationSummary.tsx` - compact overlay view
- `SimulationSummaryExpanded.tsx` - expanded view with tables
- `ResponsiveSimulationSummary.tsx` - wrapper component
- `ResponsiveSimulationSummary.test.tsx` - comprehensive tests

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d996dee8464f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.