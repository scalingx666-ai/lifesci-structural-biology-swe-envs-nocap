# Issue

**Title:** feat: Refactor Figure component for generic time-series plotting

## Description

## Overview
This PR refactors the `Figure` component to support both modifier-based data (computes/fixes/variables) and generic time-series data, enabling reuse for future features like particle selection plotting while maintaining full backward compatibility.

## Changes

### 1. Added PlotData Interface (`src/types.ts`)
- New `PlotData` type with: `data1D`, `xLabel`, `yLabel`, `name`, and optional `syncDataPoints`
- Represents the minimal data needed for plotting

### 2. Refactored Figure Component (`src/components/Figure.tsx`)
- Updated `FigureProps` to accept either `modifier` OR `plotData` prop
- Used `useMemo` to extract plot configuration from either source
- Only sets `syncDataPoints` when a modifier is provided
- Uses `useId()` hook for unique DOM element IDs per instance
- All Dygraph initialization and updates use the extracted plot configuration

### 3. Backward Compatibility
- All existing usages in `SimulationSummary.tsx` work unchanged
- No breaking changes to the API

## Usage

**Existing way (still works):**
```typescript
<Figure modifier={compute} onClose={() => {}} />
```

**New generic way (for custom plotting):**
```typescript
<Figure
  plotData={{
    data1D: { data: [[0, 1], [1, 2]], labels: ["Time", "Distance"] },
    xLabel: "Time",
    yLabel: "Distance (Å)",
    name: "Particle Distance"
  }}
  onClose={() => {}}
/>
```

## Testing
- No linting errors
- Verified all existing Figure usages still work correctly
- Component handles both prop types correctly

## Next Steps
This enables future work on particle selection plotting and other custom time-series visualizations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fc78c5736069`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.