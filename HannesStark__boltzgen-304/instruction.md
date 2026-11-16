# Issue

**Title:** Resolve bond and leaving-atom selections consistently after chain renaming

## Description

Duplicate chain IDs could select another chain's sampling map, silently remove the wrong atom, or fail after file loading. Fused inline donor selections also differed between bonds and leaving atoms.

Register inline metadata and atom endpoints under final chain names after concatenation. Use one resolver for bonds and leaving atoms, preserve donor aliases and global offsets after fusion, and record omissions against the resolved source context. Preserve the existing single-step rename rule and first-match semantics for expanded sequence ranges. Reject conflicting donor aliases clearly.

 and the file-atom reports from @ayshaw (#24), @yx0516 (#95) and @Misaka-kaminari (#177). This does not implement noncovalent-distance constraints.

Tests cover original/final IDs, repeated aliases, both file/inline orders, multiple inline copies, variable-length sequence maps, contiguous/gapped crops, fused donors, later fusions shifting earlier endpoints, empty fusion targets, invalid atom/residue/chain selections and source provenance. Review caught an intermediate range-selection regression; it is fixed with 36 additional controls. Use unique input IDs where possible: an ID that is also a rename alias retains the documented alias-first behavior.

Validation: 122 new retained regression cases in this PR. The combined final snapshot passed 1,056 CPU tests (17 skipped); 297 selected tests also passed on Python 3.11 / Torch 2.7.1 / pandas 2.2.3. Independent deep review found no remaining blocker. Model-specific environments, GPU inference and the external Foldseek binary were not exercised.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bbf7e8ff0011`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.