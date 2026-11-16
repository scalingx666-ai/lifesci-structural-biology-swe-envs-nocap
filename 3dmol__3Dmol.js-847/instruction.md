# Issue

**Title:** Fix dashed bond side flipping during animation

## Description

When animating flexible molecules with fractional bond orders (e.g., Diels-Alder intermediates), the dashed side of multi-bonds would randomly flip between frames. This was visually distracting and incorrect.

### Two issues combined:

1. `getSideBondV` returned a perpendicular vector whose direction depended on which neighbor happened to be selected for the cross product. Small coordinate changes could change this selection, flipping v.
2. `chooseDashedPlusV` used a weighted centroid of the full conjugated system. For flexible molecules, this centroid moves relative to individual bonds, and when the centroid is nearly on the bond axis, the dot product is ~0 and tiny changes flip the sign.

### Solution

- Canonicalize v in `getSideBondV`: always point toward positive x (or y, or z if x is negligible). This makes v deterministic based on bond orientation alone.
- Simplify `chooseDashedPlusV`: use immediate neighbor positions only (not the full conjugated system). These move with the bond during flexing, providing a stable reference. Add fallback for perpendicular cases.

I'm open to alternative approaches if there are edge cases this doesn't handle well, and/or some kind of manual override. Still continuing to test with additional molecules and trajectories.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `04a0849b1300`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.