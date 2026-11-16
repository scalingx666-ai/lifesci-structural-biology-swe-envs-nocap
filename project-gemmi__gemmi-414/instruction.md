# Issue

**Title:** docs: full Doxygen API documentation for core data structures

## Description

> **CI note:** The `test_sfcalc1/2/3` failures visible in this PR's checks are a **pre-existing regression in `upstream/master`** introduced by commit `0445d0c2` ("Add blob symmetry image test"), unrelated to the documentation changes here. The same tests fail on master's own CI. No C++ code was changed in this PR — only `///` Doxygen comment blocks.

## Summary

Adds complete, accurate full-Doxygen API documentation (every public class,
struct, enum, member, function — with `@param`/`@return` throughout) to the
eight core data structure headers:

| Header | Content |
|--------|---------|
| `model.hpp` | Structure→Model→Chain→Residue→Atom hierarchy, enums, free functions |
| `unitcell.hpp` | UnitCell, coordinate fractionalization/orthogonalization, NearestImage |
| `symmetry.hpp` | SpaceGroup, GroupOps, Op (rational fraction encoding), ReciprocalAsu, enums |
| `metadata.hpp` | Metadata, Entity, Connection, Assembly, NCS, Helix, Sheet, experiment info |
| `elem.hpp` | El enum (atomic numbers), Element class |
| `seqid.hpp` | SeqId (sequence number + insertion code), ResidueId, AtomAddress |
| `resinfo.hpp` | ResidueKind enum, ResidueInfo, find_tabulated_residue() |
| `small.hpp` | SmallStructure and Site for small molecules/inorganic crystals |

Also expands `docs/api.rst` with `doxygenfile::` entries for all eight headers.

## Approach

- Comments use `///` triple-slash Doxygen style
- Every entity was documented by reading the implementation first to ensure accuracy
- Key accuracy verifications documented:
  - `Op::rot`/`tran` use rational fraction encoding with DEN=24
  - `UnitCell` angles stored in degrees; orthogonalization uses PDB convention (a along X)
  - `NearestImage::dist_sq` is squared distance in Å²
  - `SeqId::icode = ' '` (space, not '\0') means no insertion code
  - `Element::atomic_number()` returns 1 for deuterium
- PR #402 (Paul Emsley / pemsley) was audited; none of these 8 headers were touched by it

## Literature references added

`@par References` Doxygen blocks added to cite primary sources in the rendered API docs:

| Symbol | Reference |
|--------|-----------|
| `vdw_radius()` in `elem.hpp` | Mantina et al. (2009) *J. Phys. Chem. A* 113, 5806 ([doi](https://doi.org/10.1021/jp8111556)); Bondi (1964) *J. Phys. Chem.* 68, 441 ([doi](https://doi.org/10.1021/j100785a001)) |
| `rot_type()` in `symmetry.hpp` | Grosse-Kunstleve (1999) *Acta Cryst.* A55, 383 ([doi](https://doi.org/10.1107/S0108767398010186)) |
| `nonzero_inversion_center()` in `symmetry.hpp` | ITA (2016) Vol. A, ch. 3.5 ([doi](https://doi.org/10.1107/97809553602060000933)) |
| `calculate_matrix_B()` in `unitcell.hpp` | Busing & Levy (1967) *Acta Cryst.* 22, 457 ([doi](https://doi.org/10.1107/S0365110X67000970)) |
| `calculate_u_eq()` in `unitcell.hpp` | Fischer & Tillmanns (1988) *Acta Cryst.* C44, 775 ([doi](https://doi.org/10.1107/S0108270188007712)) |

## Depends on

**This PR requires PR #413 (infrastructure) to be merged first.**
See  for the Doxygen/Breathe build setup.

## Part of series

| PR | Status | Content |
|----|--------|---------|
| #413 | Open | Build infrastructure (Doxyfile, Breathe, readthedocs) |
| This PR | Open | Core data structures (8 headers) |
| PR 3 | Planned | CIF handling |
| PR 4 | Planned | Structure file I/O |
| PR 5–10 | Planned | Remaining headers |

## Verification

```
cd docs && make html   # api.html grows substantially with all 8 headers documented
```

Verified locally: doxygen 1.9.8, breathe 4.36.0, Sphinx 9.1.0.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0dba38b8465e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.