# Issue

**Title:** feat: add embed config URL parameter support

## Description

## Summary

Adds support for configuring embedded simulation behavior via a base64-encoded JSON URL parameter.

## Changes

- Added `EmbedConfig` interface with options:
  - `showSimulationSummary` - Control visibility of simulation summary overlay
  - `showSimulationBox` - Control visibility of simulation box visualization
  - `enableCameraControls` - Enable/disable camera controls
  - `enableParticlePicking` - Enable/disable particle picking

- Updated `useEmbeddedMode` hook to parse `config` URL parameter (base64-encoded JSON)
- Updated `View` component to apply embed config settings:
  - Controls SimulationSummaryOverlay visibility
  - Updates render settings for showSimulationBox
  - Applies camera controls and particle picking settings via omovi Visualizer API

- Updated omovi dependency to 0.21.0 (includes `setControlsEnabled` and `setPickingEnabled` methods)

## Usage

The config parameter can be passed as base64-encoded JSON:
```
?config=eyJzaG93U2ltdWxhdGlvblN1bW1hcnkiOmZhbHNlLCJlbmFibGVDYW1lcmFDb250cm9scyI6ZmFsc2V9
```

Which decodes to:
```json
{
  "showSimulationSummary": false,
  "enableCameraControls": false
}
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `55ae66fb35d7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.