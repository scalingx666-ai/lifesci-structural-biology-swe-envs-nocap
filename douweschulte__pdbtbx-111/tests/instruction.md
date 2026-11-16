# Issue

**Title:** Ow/gz

## Description

Added gz support for both mmCIF and PDB files.

Compression is now an optional feature, which is on by default. We are using the Flate2 crate for gz stream de/compression.

Also did some refactoring of the serialisation boilerplate in the save module.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `793da9ca0a55`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.