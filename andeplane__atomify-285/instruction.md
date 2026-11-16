# Issue

**Title:** feat: enable WebXR support when ?webxr=true URL parameter is present

## Description

## Overview
Adds conditional WebXR (VR) support to the Three.js visualization, enabling VR mode only when `?webxr=true` is present in the URL.

## Changes

### WebXR Support
- Added conditional WebXR initialization based on URL parameter
- Enables Three.js XR renderer when `?webxr=true` is in the URL
- Adds VR button to the visualization container when WebXR is enabled
- Uses Three.js built-in `VRButton` utility for VR session management

### Implementation Details
- Checks URL parameters using `URLSearchParams` (consistent with existing codebase patterns)
- Accesses raw Three.js renderer via `visualizer.renderer.getRawRenderer()`
- VR button is only added when WebXR is explicitly enabled via URL parameter
- No impact on existing functionality when WebXR parameter is not present

## Benefits
- ✅ Enables VR visualization for supported devices
- ✅ Opt-in feature via URL parameter (no impact on default behavior)
- ✅ Uses standard Three.js WebXR utilities
- ✅ Follows existing codebase patterns for URL parameter handling

## Testing
- ✅ Verified WebXR only enables when `?webxr=true` is present
- ✅ Confirmed no changes to default behavior without parameter
- ✅ VR button appears correctly when enabled

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f8a495977aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.