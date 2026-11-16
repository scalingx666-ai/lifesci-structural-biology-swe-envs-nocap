# Issue

**Title:** Implement Molden file parser for quantum chemistry orbital visualization

## Description

Implements Phase 2: C++ parser for Molden format files from quantum chemistry calculations (GAMESS, Gaussian, ORCA). Extracts atomic coordinates, Gaussian basis sets, and molecular orbital data for visualization.

## Parser Implementation

**Core parsing** (~1000 lines in `molden.cpp`):
- Section parsers for `[Atoms]`, `[GTO]`, `[MO]` with state machine for hierarchical data
- Handles SP shells (dual S+P coefficients), Cartesian/Spherical basis formats (`[5D]` tags)
- Fortran scientific notation (`D` → `E` conversion), case-insensitive sections
- Infers missing atomic numbers from element symbols, skips orbital index lines

**API** (additions to `molden.h`):
```cpp
// Primary entry point - returns empty MoldenData on error
MoldenData load_molden_file(const char* filepath);

// With error reporting
MoldenData parse_molden_file(const std::string& filename, std::string* error_msg);

// Validation
bool validate_molden_data(const MoldenData& data);
```

**Error handling**: Optional error string parameter, validates coefficient counts match basis functions, checks occupation ∈ [0,2], verifies positive exponents.

## Testing

10 unit tests covering: H₂/H₂O molecules, SP shells, AU vs Angstrom units, missing fields, spherical harmonics, Fortran notation, error conditions. All passing with zero warnings (`-Wall -Wextra -Werror`).

Test files in `datasets/molden_examples/`:
- `h2_sto3g.molden` - Simple 2-atom system
- `h2o_sto3g.molden` - Demonstrates SP shell handling

## Documentation

- `MOLDEN_PARSER_USAGE.md` - API reference and examples
- `PHASE2_SUMMARY.md` - Implementation metrics and format coverage
- `datasets/molden_examples/README.md` - Test file descriptions

## Integration Notes

Phase 3 (future work) requires:
- Add `molden.cpp` to `CMakeLists.txt`
- Register `.molden` extension in `loader.cpp`
- Implement `md_molden_system_loader()` C wrapper
- Convert `MoldenData` → `md_system_t` + `md_gto_data_t`

Requires mdlib submodule initialization (currently not available in build environment).

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

> Prompt for Coding Agent:
> Objective: Implement Phase 2 of Molden file integration for VIAMD—build the C++ Molden file parser.
> Context
>
> VIAMD will support visualization and analysis of molecular data from Molden files. The next step is to create a robust parser that reads Molden files, correctly extracting atoms, basis sets, and orbital data as designed in Phase 1.
> Your Task
>
>     Develop Molden Parser Code:
>         Implement a C++ module/class (e.g., molden.cpp/molden.h) that parses Molden files according to the structure specified in Phase 1.
>         The parser should extract:
>             Atom information (element, coordinates, index)
>             Basis set ([GTO] section) including type, exponents, coefficients for each atom
>             Molecular orbitals ([MO] section): energies, occupancies, symmetry labels, coefficients
>         Handle common format variations and errors gracefully.
>
>     Memory Handling:
>         Use VIAMD conventions for allocation/ownership (e.g., arena or frame allocators if applicable).
>         Make sure the parsed data is accessible and “owned” in a way compatible with VIAMD’s architecture.
>
>     Testing and Validation:
>         Prepare or collect example Molden files for unit tests.
>         Create tests verifying correct parsing (geometry, basis, orbitals).
>         Ensure the parser handles missing/optional fields and provides useful error messages.
>
>     Integration Hook:
>         Expose a loader function (e.g., load_molden_file(const char* filepath)) that takes a path and returns a populated data structure.
>         Document expected function signature and basic usage in comments.
>
>     Deliverables:
>         The Molden parser implementation in molden.cpp/molden.h
>         Unit tests with at least two real Molden files and results in example/test directory
>         Initial documentation or comments summarizing parser design
>
> Notes:
>
>     You are not required to integrate with VIAMD’s UI or visualization in this phase.
>     Keep extensibility in mind—future phases will use your API for visualization and analysis.
>
> End of prompt.

</details>

<!-- START COPILOT CODING AGENT TIPS -->
---

💬 We'd love your input! Share your thoughts on Copilot coding agent in our [2 minute survey](https://gh.io/copilot-coding-agent-survey).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `695a0914b395`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.