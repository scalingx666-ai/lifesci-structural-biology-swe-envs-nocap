# Issue

**Title:** docs: full Doxygen API documentation for maps and grids

## Description

## Summary

This PR adds complete Doxygen API documentation for Gemmi's map and grid layer, covering 9 headers:

- `grid.hpp` — 3D crystallographic grid template (Grid<T>, GridBase, GridOp, interpolation, symmetrize)
- `ccp4.hpp` — CCP4/MRC map file format (Ccp4<T>, MapSetup, read/write functions)
- `recgrid.hpp` — Reciprocal-space grid for FFT (ReciprocalGrid<T>, half_l mode, Miller index access)
- `dencalc.hpp` — Electron density calculation from atomic model (DensityCalculator, Gaussian placement)
- `asumask.hpp` — Asymmetric unit masking (AsuBrick, MaskedGrid<T,V>, get_asu_mask)
- `solmask.hpp` — Solvent masking (SolventMasker, AtomicRadiiSet, mask_points_in_radius)
- `floodfill.hpp` — 3D flood-fill on grids (FloodFill<T,Land>, flood_fill_above)
- `fourier.hpp` — FFT operations between real and reciprocal space (transform_f_phi_to_map, transform_map_to_f_phi)
- `reciproc.hpp` — Reciprocal space utilities (ReciprocalAsu, for_all_reflections)

## Documentation standard

- `///` triple-slash Doxygen comments throughout
- Every public entity has `@brief`; non-obvious parameters have `@param`/`@return`/`@throws`/`@tparam`
- Semantics verified against implementations (grid data layout (w*nv+v)*nu+u, half_l FFT convention, ASU mask encoding 0=ASU/1=mate, CCP4 data modes 0/1/2/6/12, B-factor sharpening formula)

## Literature references added

`@par References` Doxygen blocks added to cite primary sources in the rendered API docs:

| Symbol | Reference |
|--------|-----------|
| `cubic_interpolation()` in `grid.hpp` | Afonine et al. (2018) *Acta Cryst.* D74, 531 ([doi](https://doi.org/10.1107/S2059798318006551)) — eq. 24 for the Catmull–Rom formula |
| `tricubic_interpolation()` in `grid.hpp` | Same reference (tensor-product extension of the 1D formula) |

## Dependencies

**This PR depends on PR #413** (Doxygen/Breathe infrastructure) being merged first.

It follows PR #414 (core data structures), PR #415 (CIF handling), PR #416 (structure I/O), and PR #417 (reflection data) in the documentation series.

## Series context

This is PR 6 of a planned series of 10 PRs adding incremental API documentation:

| PR | Branch | Content |
|----|--------|---------|
| #413 | `api-docs/infra` | Build infrastructure |
| #414 | `api-docs/core-structures` | Core data structures |
| #415 | `api-docs/cif` | CIF handling |
| #416 | `api-docs/structure-io` | Structure file I/O |
| #417 | `api-docs/reflection` | Reflection data |
| **This PR** | `api-docs/maps-grids` | **Maps and grids** |
| PR 7 | `api-docs/calculations` | calculate.hpp, neighbor.hpp, sfcalc.hpp, align.hpp, and related |
| PR 8 | `api-docs/chemistry` | chemcomp.hpp, monlib.hpp, topo.hpp, and related |
| PR 9 | `api-docs/scattering-math` | formfact.hpp, math.hpp, cellred.hpp, and related |
| PR 10 | `api-docs/io-utils` | fileutil.hpp, gz.hpp, util.hpp, logger.hpp, and related |

## Attribution

Builds on and credits prior work in PR #402 (Paul Emsley / pemsley)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a662cff5c64a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.