# Issue

**Title:** docs: full Doxygen API documentation for structure I/O

## Description

## Summary

This PR adds complete Doxygen API documentation for Gemmi's structure file I/O layer, covering 10 headers:

- `mmcif.hpp` — structure reading from mmCIF (make_structure, make_structure_from_block, ChemCompModel)
- `mmread.hpp` — universal structure reader (read_structure_file, format detection)
- `mmread_gz.hpp` — gzip-aware reading wrappers
- `pdb.hpp` — PDB-format reading (including hybrid-36, REMARK 290 symmetry)
- `to_mmcif.hpp` — structure writing to mmCIF (MmcifOutputGroups with 31 output categories)
- `to_pdb.hpp` — structure writing to PDB (PdbWriteOptions, use_hetatm classification)
- `crd.hpp` — Refmac CRD preparation (setup_for_crd, prepare_refmac_crd)
- `smcif.hpp` — small-molecule CIF reading/writing (fractional coordinates, SmallStructure)
- `mmdb.hpp` — CCP4 MMDB interop layer (copy_to_mmdb, copy_from_mmdb and helpers)
- `pirfasta.hpp` — PIR/FASTA sequence format (is_pir_format, read_pir_or_fasta)

## Documentation standard

- `///` triple-slash Doxygen comments throughout
- Every public entity has `@brief`; non-obvious parameters have `@param`/`@return`/`@throws`/`@tparam`
- Semantics verified against implementations (e.g., save_doc move semantics, use_hetatm three-tier classification, REMARK 290 triplet notation, fractional vs Cartesian coordinates)

## Dependencies

**This PR depends on PR #413** (Doxygen/Breathe infrastructure) being merged first.

It follows PR #414 (core data structures) and PR #415 (CIF handling) in the documentation series.

## Series context

This is PR 4 of a planned series of 10 PRs adding incremental API documentation:

| PR | Branch | Content |
|----|--------|---------|
| #413 | `api-docs/infra` | Build infrastructure (Doxyfile, conf.py, api.rst, readthedocs) |
| #414 | `api-docs/core-structures` | model.hpp, unitcell.hpp, symmetry.hpp, metadata.hpp, elem.hpp, seqid.hpp, resinfo.hpp, small.hpp |
| #415 | `api-docs/cif` | cif.hpp, cifdoc.hpp, read_cif.hpp, to_cif.hpp, to_json.hpp, json.hpp, numb.hpp, ddl.hpp |
| **This PR** | `api-docs/structure-io` | **mmcif.hpp, mmread.hpp, mmread_gz.hpp, pdb.hpp, to_mmcif.hpp, to_pdb.hpp, crd.hpp, smcif.hpp, mmdb.hpp, pirfasta.hpp** |
| PR 5 | `api-docs/reflection` | mtz.hpp, refln.hpp, cif2mtz.hpp, mtz2cif.hpp, and related |
| PR 6 | `api-docs/maps-grids` | grid.hpp, ccp4.hpp, dencalc.hpp, fourier.hpp, and related |
| PR 7 | `api-docs/calculations` | calculate.hpp, neighbor.hpp, sfcalc.hpp, align.hpp, and related |
| PR 8 | `api-docs/chemistry` | chemcomp.hpp, monlib.hpp, topo.hpp, and related |
| PR 9 | `api-docs/scattering-math` | formfact.hpp, math.hpp, cellred.hpp, and related |
| PR 10 | `api-docs/io-utils` | fileutil.hpp, gz.hpp, util.hpp, logger.hpp, and related |

## Attribution

Builds on and credits prior work in PR #402 (Paul Emsley / pemsley). All comments audited/rewritten where needed against actual implementations.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `09a57e882c55`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.