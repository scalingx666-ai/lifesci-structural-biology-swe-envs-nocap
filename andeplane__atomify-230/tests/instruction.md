# Issue

**Title:** style: update color scheme from black to grey-ish tones

## Description

## Changes

This PR updates the application's color scheme from pure black backgrounds to grey-ish tones for a softer, more modern appearance.

### Color Updates

- **Menu background**: Changed to rgb(41, 40, 45) - `#29282d`
- **Selected menu element**: Changed to rgb(42, 59, 80) - `#2a3b50`
- **Main page header**: Changed to rgb(26, 27, 31) - `#1a1b1f`
- **Card backgrounds**: Changed to rgb(42, 41, 47) - `#2a292f`

### Files Modified

- `src/index.css` - Updated sidebar, menu, and global backgrounds
- `src/App.tsx` - Updated Ant Design theme configuration
- `src/containers/Examples.css` - Updated Examples page and card styling
- `src/components/LoadingSimulationScreen.tsx` - Updated loading screen background

### Additional Updates

- Adjusted text colors throughout to ensure proper readability on the new grey backgrounds
- Updated card text colors (titles, descriptions) for better contrast
- Maintained consistency across all components

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `094d2b25f1a9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.