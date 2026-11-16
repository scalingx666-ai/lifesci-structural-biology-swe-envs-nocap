# Issue

**Title:** Retry oversized BGZF blocks on incompressible data

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit`` locally, and understand that continuous integration checks will be used to confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files ``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed already, or do not wish to be listed. (*This acknowledgement is optional.*)

### Description of changes
- Fixed inconsistency where `flush()` sliced 65,535 bytes while `write()` sliced 65,536 bytes in `Bio/bgzf.py`.
- Removed dead-code redundant CRC calculation in `_write_block`.
- Updated `_write_block` / `write` logic to automatically retry writing with smaller uncompressed chunks if a payload fails to compress within the 16-bit `BSIZE` field limit (65,535 bytes including BGZF header/footer overhead).
- Added a regression test in `Tests/test_bgzf.py` using random/incompressible data (`random.randbytes(65536)`) to ensure writing high-entropy data completes cleanly without raising `struct.error` or `RuntimeError`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `49fefbc675e0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.