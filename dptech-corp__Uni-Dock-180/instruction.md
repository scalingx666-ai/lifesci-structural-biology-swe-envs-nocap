# Issue

**Title:** Fix SIGSEGV with unsupported atom types in SDF ligands

## Description

## Summary
- Adds atom type validation to `parse_sdf_atom_string()` in `parse_pdbqt.cpp`, matching the existing check in `parse_pdbqt_atom_string()`
- Prevents segfault when SDF files contain unsupported elements (e.g., boron "B") that return `AD_TYPE_SIZE` sentinel, causing out-of-bounds grid access
- Adds missing `is_non_ad_metal_name()` check for non-AD metal types in SDF parser

## Root Cause
`parse_sdf_atom_string()` did not validate atom types. When an SDF contains boron or other unsupported elements, `string_to_ad_type("B")` returns `AD_TYPE_SIZE` (35). The atom was added to the model without validation, and later grid evaluation accessed `m_grids[35]` out of bounds, causing a segfault.

The PDBQT parser already had this validation via `acceptable_type()` + `struct_parse_error`, but the SDF parser was missing it entirely.

## Test plan
- [ ] Dock an SDF file containing boron atoms — should now skip the ligand with an error message instead of crashing
- [ ] Dock a normal SDF file — should work exactly as before
- [ ] Verify PDBQT docking is unaffected

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.