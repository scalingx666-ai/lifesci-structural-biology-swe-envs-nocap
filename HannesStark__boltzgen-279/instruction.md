# Issue

**Title:** Fix PDB subchain labeling, ensemble parsing, and assembly cleanup

## Description

PDB files containing several copies of a polymer could lose every chain after the first during mmCIF export. Align each observed polymer subchain independently in every model after selecting alternative conformations. Preserve chains with different unresolved positions, use consistent zero-based residue indices, and expand biological assemblies before removing water subchains referenced by Gemmi 0.7. Real 3K4P YAML preprocessing/export/reload now retains 876 tokens, including 438 designed chain-B tokens.

Thanks to @ryanhulke for the original per-subchain parsing fix in , @yx0516 for identifying and proposing a fix for lost identical chains in , and @fnachon for the related fix in . This replacement builds on their contributions.

Also repair the downstream data-integrity problems found during review:

- Select each input file’s reference model before YAML cropping, insertion, fusion, or concatenation, so another model cannot replace another chain’s coordinates. Standalone PDB/mmCIF parsing retains all models.
- Reject inconsistent SEQRES/coordinate alignments with a clear error before they silently shift or drop residues.
- Remove wholly unresolved YAML chain selections while preserving internal gaps, and report an empty file selection clearly.
- Keep annotations tied to the actual exported chain IDs, and discard MSA metadata for chains removed during selection.
- Keep identical cropped sequences with different residue indices in distinct mmCIF entities, preserving both chains’ coordinates and indices on reload.

The current-main merge preserves full original source context before cropping and keeps original residue mappings through resets, insertions, and composition.

Validation: 340 tests passed and 18 dependency/asset skips on each of Gemmi 0.6.5 and 0.7.5. The 86 parser/YAML cases use actual parsing, tokenization, cache reuse, coordinate comparisons, and export/reload, with failing-before controls. Independent checks include 3,969 two-chain gap patterns per version, real structures, and current-main source-context/scoring-request compatibility. The four replacement branches combine with 487 passing tests on each version. The full review by the required five reviewers plus an additional independent reviewer is complete, including final merge checks. Native ESM model execution was not run.

. Replaces #237 and covers #255 and the differing-chain-coverage problem in #140.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc69ea045030`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.