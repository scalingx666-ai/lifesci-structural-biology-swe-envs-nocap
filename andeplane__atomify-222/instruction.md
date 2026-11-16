# Issue

**Title:** fix: Skip Examples in embedded mode and fix grayscale particles

## Description

## Summary
This PR improves the embedded mode experience by skipping the Examples screen and going directly to the simulation. It also fixes a bug where particles appeared grayscale in embedded mode.

## Changes
- Updated `src/store/app.ts` to initialize `selectedMenu` to "view" when in embedded mode.
- Updated `src/containers/Main.tsx` to remove the Examples tab in embedded mode.
- Updated `src/App.tsx` to select "view" by default in embedded mode.
- Updated `src/store/render.ts` to force a particle style update when `setVisualizer` is called, ensuring colors are applied correctly when the Visualizer is initialized.

## Impact / Benefits
- Embedded simulations load faster and cleaner without showing the Examples UI.
- Particles are correctly colored in embedded mode (fixing the grayscale bug).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d671d430ae58`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.