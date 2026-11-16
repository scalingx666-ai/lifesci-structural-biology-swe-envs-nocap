# Issue

**Title:** Implement liquid glass effect with four-corner gradient background

## Description

## Overview
Implements a subtle liquid glass effect using pure CSS with exact RGB color values matching the design.

## Changes
- Animated four-corner gradient background with exact RGB values
- Glassmorphism effects using CSS backdrop-filter
- Sidebar with liquid glass effect and specular highlights
- Selected menu gradient (rgb(73,107,187) to rgb(100,173,230))
- Unselected menu items transparent/invisible
- Glass effects on cards, overlays, and containers
- Subtle diagonal overlay for depth

## Technical Details
- Pure CSS implementation (no npm packages)
- Uses backdrop-filter for glassmorphism
- CSS animations for gradient movement
- Pseudo-elements for specular highlights

## Files Changed
- `src/index.css` - Gradient background, sidebar glass, menu styles, overlay styles
- `src/containers/Examples.css` - Card glassmorphism
- `src/containers/Edit.tsx` - Glass wrapper
- `src/containers/SimulationSummary.tsx` - Glass container

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ebe65e4a6b49`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.