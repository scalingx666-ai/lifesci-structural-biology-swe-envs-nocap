# Issue

**Title:** Fix insertion and fusion integrity before relaxing NumPy dependencies

## Description

File insertions and fused entities fail on NumPy 2.4 because chain-derived offsets remain one-element arrays. Resolve unique scalar indices while preserving copied chain state and residue-index gaps, then allow `numpy>=2.0.2,<2.5` and `numba>=0.61.0,<0.66`.

The implementation and review repairs also preserve coordinate ensembles, donor bonds, cyclic endpoints, empty fusion targets, per-residue metadata and constraint references through repeated edits. Invalid insertion positions now fail clearly. Explicit cropping keeps its residue mapping aligned with retained tokens, preventing invalid reconstructed bond references.

Validation: six Python/NumPy/Numba combinations, including Python 3.13, passed the available CPU suite (719 tests, 19 optional-dependency/model-asset skips). The final two-line crop correction and three additional tests bring the NumPy 2.4 full suite to 722 passed; all 187 final transformation tests pass across all six combinations. The compiled Numba MSA transformation and 96-table parity were qualified across the same six combinations. Regression checks fail on the corresponding pre-fix code. Tested combinations and limits are documented in `docs/dependencies.md`; GPU inference and training were not qualified.

Review: four independent Codex sessions (Astra, Luna, Terra and Sol) and an actual Claude Code Opus 5.5 session, with consequential fixes rechecked on immutable revisions. All confirmed in-scope findings are fixed. Combined integration with PRs #283, #285 and #284 passes 843 tests (19 optional-dependency/model-asset skips). All four are merged; final main has exactly the tested integration file tree.

 and addresses #220. Thanks to @001TMF for the report, @AtharvaTilewale (#274) and @fnachon (#268) for the scalar-fix proposals, and @jevandezande / @siddheshsalunke (#263) for the dependency request and original relaxation proposal. This implementation independently verifies and extends their work.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cdcb2d9f697a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.