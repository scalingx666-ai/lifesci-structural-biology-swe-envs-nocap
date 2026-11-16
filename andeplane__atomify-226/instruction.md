# Issue

**Title:** feat: Add LoadingSimulationScreen for embedded mode

## Description

## Summary

Adds a LoadingSimulationScreen component that displays a loading state in embedded mode while waiting for the simulation to start, then switches to the View component once the simulation begins.

## Changes

- Created new `LoadingSimulationScreen` component with loading spinner and status display
- Modified `Main.tsx` to conditionally render `LoadingSimulationScreen` in embedded mode before simulation starts
- Updated `Status` interface to use `string` instead of `String` type
- Suppressed status modal in embedded mode (handled by LoadingSimulationScreen instead)
- Fixed pre-existing TypeScript error in `Simulation.tsx` with proper `@ts-ignore` comments

## Impact / Benefits

- Improved user experience in embedded mode with clear loading feedback
- Eliminates confusing blank/empty state while waiting for simulation to initialize
- Seamless transition from loading screen to visualization once simulation starts
- Consistent with project conventions (no type casts, uses `@ts-ignore` where appropriate)

## Technical Details

When running in embedded mode (`isEmbedded` prop is true):
1. Initially shows `LoadingSimulationScreen` with loading spinner and status messages
2. Tracks when simulation starts via `running` state
3. Once `running` becomes `true`, sets `hasStarted` flag
4. Switches from `LoadingSimulationScreen` to `View` component
5. Stays on `View` even after simulation completes

The status modal that normally appears is suppressed in embedded mode since the LoadingSimulationScreen provides better inline feedback.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fef6fb92b820`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.