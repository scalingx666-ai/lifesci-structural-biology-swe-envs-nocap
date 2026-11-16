# Issue

**Title:** Make functions within partition.py public-access for downstream usecases.

## Description

Extending partition.py (e.g. NeighborLists) requires visibility to some of the core functionality.

Certain functions ("shift_array" and "unflatten_cell_buffer") would be nice if available in the public interface.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `31dd113bc0c7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.