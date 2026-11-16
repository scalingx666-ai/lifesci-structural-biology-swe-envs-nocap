# Issue

**Title:** fix(grid): restore spacegroup member initialization

## Description

Restores the initialization of `GridMeta::spacegroup = nullptr` that was
inadvertently removed during the Doxygen documentation PR series (#413-#422).

This uninitialized pointer member could cause undefined behavior if accessed
before being explicitly set.

Related to the partial fix in commit 2c1b0c51, which addressed the same issue
in metadata.hpp and small.hpp.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f39a1cfb0b30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.