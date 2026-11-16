# Issue

**Title:** api-docs/chemistry: add Doxygen documentation to chemistry and restraints headers

## Description

## Summary

Adds Doxygen `///` triple-slash API documentation to 9 headers covering
chemical components, the monomer library, restraint topology, hydrogen
placement, link hunting, and related I/O helpers.

**Headers documented:**

| Header | Purpose |
|--------|---------|
| `chemcomp.hpp` | Chemical component definitions (BondType, ChiralityType, Restraints, ChemComp) |
| `chemcomp_xyz.hpp` | Geometry generation and refinement from restraints |
| `ener_lib.hpp` | EnerLib energy library data (atom types, bond lengths) |
| `monlib.hpp` | Monomer library: ChemLink, ChemMod, MonLib |
| `topo.hpp` | Restraint topology applied to a model (Topo, ResInfo, ChainInfo, …) |
| `riding_h.hpp` | Riding hydrogen placement |
| `linkhunt.hpp` | Inter-residue link search (LinkHunt) |
| `to_chemcomp.hpp` | Serialise ChemComp to CIF block |
| `mmcif_impl.hpp` | Shared mmCIF/refln helpers |

**docs/api.rst:** new *Chemistry and Restraints* section registers all 9 headers.

Part of the incremental API documentation series (#413 – #419 preceding PRs).

## Test plan

- [ ] CI docs-build job (Doxygen + Sphinx/Breathe) passes
- [ ] No C++ compilation errors (GEMMI_DLL macros preserved throughout)
- [ ] New RST section renders correctly in the HTML docs

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `39c3bb9a64aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.