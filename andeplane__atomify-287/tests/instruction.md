# Issue

**Title:** feat: Auto-detect WebXR support and update omovi to 0.25.0

## Description

## WebXR Support Implementation

This PR adds comprehensive WebXR (VR/AR) support to Atomify, enabling immersive visualization of molecular structures.

### Features
- **WebXR Integration**: Full support for immersive VR sessions with hand tracking
- **Gesture Controls**:
  - Single-hand pinch + drag for orbiting around the scene
  - Two-hand pinch for zooming in/out
- **Auto-detection**: VR button appears automatically when device supports WebXR (no URL parameter needed)
- **Camera Management**: Proper camera rig setup and restoration when entering/exiting VR mode
- **Light Updates**: Point light position updates correctly in VR mode and when exiting

### Technical Details
- Updated omovi dependency to 0.25.0 (includes WebXR support)
- Uses WebXR Hand Tracking API for gesture recognition
- Proper cleanup and state management when transitioning between VR and normal modes
- Camera aspect ratio and render targets properly reset after VR sessions

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1cf8f9b6738`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.