# Issue

**Title:** Phase 1: Molden file format data structures and documentation

## Description

Establishes foundation for reading Molden files (molecular orbital data from quantum chemistry programs) in VIAMD. Phase 1 delivers data structures and edge case documentation; parsing/integration deferred to later phases.

## Data Structures

**Core types** (`molden.h`, 11 KB):
- `MoldenData`: main container with atoms, basis sets, molecular orbitals
- `Atom`: element, coordinates, atomic number
- `ContractedShell` + `PrimitiveGaussian`: Gaussian basis set representation
- `MolecularOrbital`: coefficients, energy, spin, occupation

**Key design decisions**:
- SP shells (combined S+P): dual coefficients, counts as 4 basis functions
- Cartesian vs spherical harmonics: d=6/5, f=10/7, g=15/9
- Coordinate units tracked explicitly (Angstrom vs atomic units)
- Zero-allocation parsing utilities (switch-based lookups, character comparison)

```cpp
// Example usage
MoldenData data;
data.coord_unit = CoordinateUnit::Angstrom;
data.atoms.push_back(Atom{
    .element_symbol = "C",
    .atom_index = 1,
    .atomic_number = 6,
    .x = 0.0f, .y = 0.0f, .z = 0.0f
});
```

## Utilities

**Validation** (`molden.cpp`, 14 KB):
- `validate_molden_data()`: atom indices, exponents, coefficient counts, occupations
- `calculate_total_basis_functions()`: handles Cartesian/spherical, SP shells
- `element_symbol_to_atomic_number()`: 30+ elements, uint16_t key packing for two-char symbols
- `parse_shell_type()`, `parse_spin_type()`: case-insensitive, zero heap allocations

**Test coverage**: 8/8 passing, H₂ molecule demonstration with STO-3G basis.

## Edge Cases Documented

**Format variations** (`MOLDEN_FORMAT_NOTES.md`, 11 KB):
- Program-specific output (GAMESS, Gaussian, ORCA, Molpro)
- Missing optional fields (symmetry labels, scale factors, atomic numbers)
- Non-sequential atom indices, variable whitespace, scientific notation (E/D)
- Coefficient ordering differences, SP shell expansion, multiple geometries

**Implementation roadmap**:
- Phase 2: File parsing ([Atoms], [GTO], [MO] sections)
- Phase 3: VIAMD loader integration (md_system_t, md_gto_data_t conversions)
- Phase 4: Orbital visualization via existing GTO infrastructure

## Impact

- Zero changes to existing VIAMD code
- No build system modifications (deferred to Phase 3)
- No external dependencies
- Files: `molden.{h,cpp}`, `molden_test.cpp`, `MOLDEN_FORMAT_NOTES.md`, `PHASE1_SUMMARY.md`

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

> Prompt for Coding Agent:
> Objective: Implement Phase 1 of Molden file integration for VIAMD.
> Context
>
> We aim to add support for reading and visualizing Molden files (reference format) in VIAMD. Molden files contain molecular geometry, basis functions, and molecular orbital information. This is a foundational step for later parsing, UI integration, and visualization.
> Your Task
>
>     Research Molden Format:
>         Review the official Molden documentation.
>         Identify all major sections ([Atoms], [GTO], [MO]) and their syntax.
>
>     Design Data Structures:
>         Define modern C++ data structures or classes to represent:
>             Atoms: symbol, index, coordinates
>             Basis sets: GTO data per atom
>             Orbitals: coefficients, energies, occupancies, labels
>         Document edge cases (e.g., missing fields, alternate GTO formats).
>
>     Draft Code Files:
>         Start molden.h and molden.cpp to declare and outline these data structures.
>         Include comments describing mapping between Molden syntax and C++ types.
>
>     Documentation & Schema:
>         Write clear comments or a markdown summary explaining the mapping and any initial limitations.
>
> Deliverables:
>
>     The designed data structures (with clear code comments).
>     Initial code files (molden.h, molden.cpp), ready for review but not yet integrated into the main application.
>     Markdown or comment summary of Molden format edge case handling.
>
> Notes:
>
>     The goal is to lay a reliable foundation for parsing and integration steps in later phases.
>     Focus on clarity and extensibility; the parser and visualization will come after.
>
> End of prompt.

</details>

<!-- START COPILOT CODING AGENT TIPS -->
---

✨ Let Copilot coding agent  — coding agent works faster and does higher quality work when set up for your repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8794e92507e6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.