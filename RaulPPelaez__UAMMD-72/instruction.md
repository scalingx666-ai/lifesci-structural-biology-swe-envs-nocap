# Issue

**Title:** Fix CellList neighbour traversal in non periodic boxes

## Description

Since e00042f Grid::pbc_cell leaves cells untouched in non periodic directions, so NeighbourIterator::nextcell could visit cells outside the grid (-1 or cellDim). The old check abs(cellj - celli) > 1 never triggered anymore, leading to wrong cell indices and out of bounds reads of cellStart. Now cells outside [0, cellDim) are skipped.

- Add test/misc/neighbourlist/CellList.cu, comparing the neighbours found by the CellList against brute force for all box periodicities.
- Fix DPPoissonSlabTest placing particles outside the slab, which made it flaky, and use abs/relative tolerances in its assertions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3249ddec13e9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.