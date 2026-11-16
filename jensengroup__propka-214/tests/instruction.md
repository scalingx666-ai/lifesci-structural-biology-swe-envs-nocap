# Issue

**Title:** Add native mmCIF input with gemmi

## Description

This is the second focused part split from #212. It is stacked on #213; after #213 is merged, this PR reduces to its four parser/dependency files.

## What changed

- Add native `.cif` and `.mmcif` input using gemmi.
- Prefer author atom, residue, and chain identifiers, with label identifiers as explicit fallbacks.
- Validate required atom-site strings, integers, and coordinates with row-specific error messages.
- Handle optional model numbers, alternate locations, insertion codes, occupancy, and B factors.
- Preserve the existing PDB processing flow after the structure has been parsed.
- Add gemmi as a runtime and development requirement.

## Why gemmi

mmCIF quoting, null values, loops, and large atom-site tables should be decoded by a CIF parser rather than by fixed-column or ad hoc string logic. gemmi also handles structures that cannot be represented by legacy PDB limits.

## Validation

- `python -m pytest tests`: 61 passed
- fatal flake8 rules: 0 findings
- `mypy`: no issues
- PDB/mmCIF output parity for 1CRN, 1UBQ, 2PTC, 4HHB, 1AKE, and 3SGB: identical labels and pKa values within 0.01.
- PDBTM parser regression: all 11,470 pdbfixer structures parsed successfully (136,634,493 atoms). On the 11,470 raw files, this branch and upstream had the same 398 failures caused by non-standard fixed-column PDB records and identical success/error sets.
- Large mmCIF parser checks:
  - 5FCI: 411,776 atoms, 163 author chains, maximum atom ID 411,776.
  - 5Y6P: 1,234,811 atoms, 862 author chains, maximum atom ID 1,234,811.

The large downloaded structures and PDBTM corpus are not added to the repository.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e278ae8978d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.