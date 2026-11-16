# Issue

**Title:** fix: hide "No simulation" modal in embedded mode

## Description

## Problem

When loading a simulation in embedded mode (e.g., when embedded in a Quarto book), the "No simulation" modal briefly appears before the simulation loads, causing a poor user experience.

## Solution

Modified the modal visibility condition in `View.tsx` to check for `isEmbeddedMode`. The modal is now only shown when:
- There's no simulation loaded
- The user hasn't manually hidden it
- **AND** the app is not in embedded mode

This prevents the modal from flashing during simulation load in embedded contexts where simulations are loaded programmatically.

## Changes

- Updated `src/containers/View.tsx` line 246 to add `&& !isEmbeddedMode` condition

## Testing

- [x] Verified the modal no longer appears when loading simulations in embedded mode
- [x] Verified the modal still appears correctly in standalone mode when no simulation is loaded

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9f9ac806e2b3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.