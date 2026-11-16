# Issue

**Title:** docs: full Doxygen API documentation for reflection data

## Description

## Summary

This PR adds complete Doxygen API documentation for Gemmi's reflection data layer, covering 9 headers:

- `mtz.hpp` — MTZ binary reflection file format (Mtz, Column, Dataset, Batch, MtzDataProxy)
- `refln.hpp` — CIF/mmCIF reflection block abstraction (ReflnBlock, ReflnDataProxy)
- `cif2mtz.hpp` — CIF-to-MTZ conversion (CifToMtz, column mapping, old-style anomalous handling)
- `mtz2cif.hpp` — MTZ-to-CIF/SF-mmCIF conversion (MtzToCif with configurable spec)
- `xds_ascii.hpp` — XDS_ASCII.HKL file reading (XdsAscii, Refl, orientation matrices)
- `xds2mtz.hpp` — XDS-to-MTZ conversion (xds_to_mtz with batch header support)
- `intensit.hpp` — Intensity merging and scaling (Intensities, MergingStats, AnisoScaling)
- `binner.hpp` — Resolution shell binning (Binner, Method enum, setup/query API)
- `asudata.hpp` — Asymmetric unit data storage (AsuData<T>, HklValue<T>, load/ensure_asu)

## Documentation standard

- `///` triple-slash Doxygen comments throughout
- Every public entity has `@brief`; non-obvious parameters have `@param`/`@return`/`@throws`/`@tparam`
- Semantics verified against implementations (MTZ column type codes, resolution as 1/d², batch header offsets, CIF null → NaN, ASU phase shifts)

## Dependencies

**This PR depends on PR #413** (Doxygen/Breathe infrastructure) being merged first.

It follows PR #414 (core data structures), PR #415 (CIF handling), and PR #416 (structure I/O) in the documentation series.

## Series context

This is PR 5 of a planned series of 10 PRs adding incremental API documentation:

| PR | Branch | Content |
|----|--------|---------|
| #413 | `api-docs/infra` | Build infrastructure (Doxyfile, conf.py, api.rst, readthedocs) |
| #414 | `api-docs/core-structures` | model.hpp, unitcell.hpp, symmetry.hpp, metadata.hpp, elem.hpp, seqid.hpp, resinfo.hpp, small.hpp |
| #415 | `api-docs/cif` | cif.hpp, cifdoc.hpp, read_cif.hpp, to_cif.hpp, to_json.hpp, json.hpp, numb.hpp, ddl.hpp |
| #416 | `api-docs/structure-io` | mmcif.hpp, mmread.hpp, mmread_gz.hpp, pdb.hpp, to_mmcif.hpp, to_pdb.hpp, crd.hpp, smcif.hpp, mmdb.hpp, pirfasta.hpp |
| **This PR** | `api-docs/reflection` | **mtz.hpp, refln.hpp, cif2mtz.hpp, mtz2cif.hpp, xds_ascii.hpp, xds2mtz.hpp, intensit.hpp, binner.hpp, asudata.hpp** |
| PR 6 | `api-docs/maps-grids` | grid.hpp, ccp4.hpp, dencalc.hpp, fourier.hpp, and related |
| PR 7 | `api-docs/calculations` | calculate.hpp, neighbor.hpp, sfcalc.hpp, align.hpp, and related |
| PR 8 | `api-docs/chemistry` | chemcomp.hpp, monlib.hpp, topo.hpp, and related |
| PR 9 | `api-docs/scattering-math` | formfact.hpp, math.hpp, cellred.hpp, and related |
| PR 10 | `api-docs/io-utils` | fileutil.hpp, gz.hpp, util.hpp, logger.hpp, and related |

## Attribution

Builds on and credits prior work in PR #402 (Paul Emsley / pemsley). All comments audited/rewritten where needed against actual implementations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `097e7656bd47`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.