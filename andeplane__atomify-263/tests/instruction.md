# Issue

**Title:** feat: add orthographic camera support

## Description

## Summary

Adds orthographic camera support to Atomify and updates omovi to version 0.20.0.

Closes 

## Changes

### Orthographic Camera Setting
- Add `orthographic: boolean` to `RenderSettings` interface (defaults to `false`)
- Add "Orthographic camera" checkbox in Settings UI (Rendering tab)
- Connect setting to `visualizer.setOrthographic()` in View component
- Setting persists in localStorage

### Dependency Update
- Update `omovi` from `^0.19.1` to `^0.20.0`
- omovi 0.20.0 includes orthographic camera support (see )

## Files Changed
- `src/store/settings.ts` - Add `orthographic` field to RenderSettings
- `src/containers/Settings.tsx` - Add checkbox toggle UI
- `src/containers/View.tsx` - Apply orthographic setting to visualizer
- `package.json` - Update omovi to 0.20.0
- `package-lock.json` - Regenerated with omovi 0.20.0 from npm registry

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `493cbe527ad1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.