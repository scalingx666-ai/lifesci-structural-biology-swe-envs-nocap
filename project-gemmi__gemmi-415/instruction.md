# Issue

**Title:** docs: full Doxygen API documentation for CIF handling

## Description

## Summary

This PR adds complete Doxygen API documentation for Gemmi's CIF (Crystallographic Information File) handling layer, covering 8 headers:

- `cifdoc.hpp` — core CIF document model (Document, Block, Loop, Item, Column)
- `cif.hpp` — CIF parsing entry points (read_file, read_string, read_memory)
- `read_cif.hpp` — CIF reading with path/stream/memory overloads
- `to_cif.hpp` — CIF writing (WriteOptions, write_cif_block_to_stream, write_cif_to_file)
- `to_json.hpp` — CIF-to-JSON conversion (JsonWriteOptions, write_as_json, write_as_mmjson)
- `json.hpp` — CIF document reading from JSON (cif_document_from_json)
- `numb.hpp` — CIF number parsing utilities (as_number, as_int, is_numb)
- `ddl.hpp` — DDL1/DDL2 dictionary validation (Validator, validate)

## Documentation standard

- `///` triple-slash Doxygen comments throughout
- Every public entity has `@brief`; non-obvious parameters have `@param`/`@return`/`@throws`
- Semantics verified against implementations (e.g., Loop::values row-major storage, numb ignores s.u., DDL1 vs DDL2 distinction)

## Dependencies

**This PR depends on PR #413** (Doxygen/Breathe infrastructure) being merged first.

It follows PR #414 (core data structures) in the documentation series.

## Series context

This is PR 3 of a planned series of 10 PRs adding incremental API documentation:

| PR | Branch | Content |
|----|--------|---------|
| #413 | `api-docs/infra` | Build infrastructure (Doxyfile, conf.py, api.rst, readthedocs) |
| #414 | `api-docs/core-structures` | model.hpp, unitcell.hpp, symmetry.hpp, metadata.hpp, elem.hpp, seqid.hpp, resinfo.hpp, small.hpp |
| **This PR** | `api-docs/cif` | **cif.hpp, cifdoc.hpp, read_cif.hpp, to_cif.hpp, to_json.hpp, json.hpp, numb.hpp, ddl.hpp** |
| PR 4 | `api-docs/structure-io` | mmcif.hpp, mmread.hpp, pdb.hpp, to_mmcif.hpp, to_pdb.hpp, and related |
| PR 5 | `api-docs/reflection` | mtz.hpp, refln.hpp, cif2mtz.hpp, mtz2cif.hpp, and related |
| PR 6 | `api-docs/maps-grids` | grid.hpp, ccp4.hpp, dencalc.hpp, fourier.hpp, and related |
| PR 7 | `api-docs/calculations` | calculate.hpp, neighbor.hpp, sfcalc.hpp, align.hpp, and related |
| PR 8 | `api-docs/chemistry` | chemcomp.hpp, monlib.hpp, topo.hpp, and related |
| PR 9 | `api-docs/scattering-math` | formfact.hpp, math.hpp, cellred.hpp, and related |
| PR 10 | `api-docs/io-utils` | fileutil.hpp, gz.hpp, util.hpp, logger.hpp, and related |

## Attribution

Builds on and credits prior work in PR #402 (Paul Emsley / pemsley). All comments audited/rewritten where needed against actual implementations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cfc685f69839`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.