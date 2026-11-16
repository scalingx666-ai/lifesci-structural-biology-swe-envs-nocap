# Issue

**Title:** fix: Restore proper TypeScript types for WASM module

## Description

## Problem

PR #226 accidentally deleted `src/wasm/lammps.mjs.d.ts` and replaced proper typing with `@ts-ignore` comments, which is a regression in type safety.

## Changes

- Restore `src/wasm/lammps.mjs.d.ts` with proper type declarations for `createModule`
- Remove `@ts-ignore` workaround comments from `Simulation.tsx` that are no longer needed
- All LoadingSimulationScreen functionality from PR #226 is maintained

## Impact

Restores proper TypeScript type safety for the WASM module without losing any functionality. TypeScript can now properly infer types for `createModule` and `Module` without needing workarounds.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e345e0369b72`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.