# Issue

**Title:** QCPSuperimposer: Kabsch SVD when quaternion cofactors vanish

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.
- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit`` locally, and understand that continuous integration checks will be used to confirm the Biopython unit tests and style checks pass with these changes.
- [x] I have added my name to the alphabetical contributors listings in the files ``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed already, or do not wish to be listed. (*This acknowledgement is optional.*)

## Summary

`QCPSuperimposer` reports `get_rms() = 0` on a collinear reference, then every 4×4 cofactor quaternion has `qsqr` below `evecprec`, so the current rotation is `I`. `get_transformed()` is then unaligned. `SVDSuperimposer` still aligns the same points. This change uses Kabsch SVD of the already-built correlation matrix `A` on that last arm, with a `det < 0` column flip. `SVDSuperimposer` is not rewritten.

Measured on BioPython 1.87, three collinear points, rigid rotation θ=0.9 about `[1,2,3]`:

| method | get_rms | transformed RMSD | rot is I |
| --- | --- | --- | --- |
| QCP before | 0 | 0.6844581042158798 | yes |
| QCP after (u @ vt) | 0 | 9.68e-16 | no |
| SVDSuperimposer | 1.12e-15 | 1.12e-15 | no |
| wrong orientation vt.T @ u.T | — | 1.243 | no |

Non-collinear tetrahedron control: QCP already matched `u @ vt` to 3e-15 and does not take this arm.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5bbc6c12c505`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.