# Issue

**Title:** docs: add Doxygen API documentation for calculations and analysis headers (PR 7/10)

## Description

## Summary

Seventh PR in the incremental Doxygen API documentation series. Adds `///` doc comments to 12 headers covering calculations, analysis, and structure factor computation, and wires them into `docs/api.rst` via `doxygenfile::` directives.

**Headers documented:**

*Calculations and Analysis*
- `calculate.hpp` — geometric calculations (angles, dihedrals, Ramachandran, mass, B-factors, TLS)
- `align.hpp` — sequence alignment to SEQRES, label_seq_id assignment, QCP superposition
- `neighbor.hpp` — cell-linked-list neighbour search (Model and SmallStructure)
- `contact.hpp` — distance-based contact search with configurable ignore rules
- `assembly.hpp` — biological assembly generation, NCS expansion, chain naming
- `select.hpp` — CCP4-style atom/residue/chain selection expressions
- `modify.hpp` — in-place structure modifications (remove H, altlocs, ANISOU; rename; deuterium handling)
- `polyheur.hpp` — polymer type heuristics, entity/subchain assignment, connectivity checks
- `dssp.hpp` — DSSP secondary structure assignment (helices, strands, turns, bends)

*Structure Factor Calculations*
- `sfcalc.hpp` — direct (non-FFT) structure factor summation
- `ecalc.hpp` — amplitude normalisation F→E (Karle approach)
- `scaling.hpp` — anisotropic scaling with optional bulk-solvent correction

Also includes the infrastructure changes from PR #413 (conf.py guard, Doxyfile, CI docs-build job) as they are not yet merged into master.

## Literature references added

`@par References` Doxygen blocks added to cite primary sources in the rendered API docs:

| Symbol | Reference |
|--------|-----------|
| `StructureFactorCalculator` in `sfcalc.hpp` | Bourhis et al. (2015) *Acta Cryst.* A70, 300 ([doi](https://doi.org/10.1107/S2053273314022207)) |
| `Scaling` struct in `scaling.hpp` | Afonine et al. (2012) *Acta Cryst.* D68, 352 ([doi](https://doi.org/10.1107/S0907444913000462)); Fokine & Urzhumtsev (2002) *Acta Cryst.* A58, 384 ([doi](https://doi.org/10.1107/S0108767302005669)) |
| `calculate_b_est()` in `calculate.hpp` | Merritt (2011) *Acta Cryst.* A67, 512 ([doi](https://doi.org/10.1107/S0108767311034350)) |
| `DsspCalculator` in `dssp.hpp` | Kabsch & Sander (1983) *Biopolymers* 22, 2577 ([doi](https://doi.org/10.1002/bip.360221211)) |

## Depends on

Part of the series starting with PR #413 (`api-docs/infra`).

## Test plan

- [ ] CI docs-build job passes (Doxygen + Sphinx/Breathe HTML build)
- [ ] CI doctest job passes (no regressions in Python doctests)
- [ ] `docs/api.rst` renders the two new sections without Breathe errors

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2e5a363c721`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.