# Issue

**Title:** feat: Add time-series plotting for particle selection

## Description

## Overview
This PR adds time-series tracking and plotting functionality for particle selection, building on the generic Figure component refactoring.

## Changes

### 1. Time-Series Data Tracking (`src/components/SelectedAtomsInfo.tsx`)
- Added state to track distance and angle measurements over time
- Automatically records measurements when atoms are selected and simulation is running
- Data structure compatible with the generic PlotData interface

### 2. Plot Buttons
- Added "Plot" button next to each distance and angle value
- Buttons only appear when time-series data exists
- Clicking opens a plot modal using the generic Figure component

### 3. Data Management
- Clears measurement data when atoms are deselected (selection changes)
- Tracks measurements for:
  - 2 atoms: 1 distance measurement
  - 3 atoms: 3 distance measurements + 3 angle measurements

### 4. Integration
- Updated `View.tsx` to pass timesteps to SelectedAtomsInfo component
- Uses the refactored Figure component with `plotData` prop
- Proper plot titles and axis labels

### 5. Bug Fixes
- Fixed React hooks order violation (moved useMemo before early return)

## Usage

1. Select 2 or 3 atoms in the viewer
2. As the simulation runs, measurements are automatically tracked
3. Click "Plot" next to any distance or angle value to visualize its time-series
4. Data clears automatically when atoms are deselected

## Testing
- Verified hooks order fix resolves React error
- Tested with 2 and 3 atom selections
- Confirmed data clears on deselection
- Verified plot modals open correctly

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4bd598b9b9e2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.