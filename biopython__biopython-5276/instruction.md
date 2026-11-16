# Issue

**Title:** Fix ArrayCore initialization reference handling

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

## Summary of Changes

Fixed a few memory issues in `PyInit_arraycore`:
- `basemodule` was decremented twice while `baseclass` leaked. Both references are now released once, and `basetype` remains a non-owning alias. `Bio/Align/substitution_matrices/_arraycore.c`: `185-220, 227, 239, 247, 251`
- `mod` leaked after later initialization failures. Moved module creation after base validation. Failure paths release it. `Bio/Align/substitution_matrices/_arraycore.c`: `184, 236-241, 248`
- A failed `PyType_Ready()` could poison retries. Retries now fail with the exact initialization error. `Bio/Align/substitution_matrices/_arraycore.c`: `225-231, 243-250`
- `Array_Type`'s permanent static reference was incorrectly decremented. Registration now leaves it untouched. `Bio/Align/substitution_matrices/_arraycore.c`: `253`
- Test `test_arraycore_import_preserves_references` covers the success, invalid/missing, and retry cases. `Tests/test_align_substitution_matrices.py`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `08fc09086afe`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.