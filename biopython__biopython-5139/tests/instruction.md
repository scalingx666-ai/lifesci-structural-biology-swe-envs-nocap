# Issue

**Title:** Silence PDBConstructionWarning in test_PDB_StructureAlignment

## Description

## Summary

Wrap PDB structure parsing calls with `warnings.catch_warnings()` to suppress `PDBConstructionWarning` messages during test execution in `test_PDB_StructureAlignment.py`.

## Changes

- Added `import warnings` to the imports
- Added `from Bio.PDB.PDBExceptions import PDBConstructionWarning` import
- Wrapped all `p.get_structure()` calls with warning suppression context manager

This follows the same pattern used in other test files:
- `test_PDB_MMCIFParser.py`
- `test_mmtf_online.py`
- `test_RCSBFormats.py`

## Testing

All 4 tests in `test_PDB_StructureAlignment.py` pass:
```
test_PDB_StructureAlignment.py::StructureAlignTests::test_StructAlign PASSED
test_PDB_StructureAlignment.py::StructureAlignTests::test_automatic_alignment_generation PASSED
test_PDB_StructureAlignment.py::StructureAlignTests::test_custom_vs_automatic_alignment PASSED
test_PDB_StructureAlignment.py::StructureAlignTests::test_msa_vs_alignment_objects PASSED
```

---

I agree to license my contributions under both the Biopython License Agreement and the BSD 3-Clause License.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `54a8eda89899`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.