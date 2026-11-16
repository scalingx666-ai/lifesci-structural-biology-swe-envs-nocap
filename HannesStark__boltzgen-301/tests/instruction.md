# Issue

**Title:** Handle single-hotspot metrics and clarify input/filtering options

## Description

Analysis omitted binding-site distance fractions for exactly one annotated site. Compute them for any nonempty site/design pair; keep them absent when no residues are designed.

Document the existing filtering override, exact inclusive filter threshold, legacy metric names, structure-group visibility defaults, stored-sequence indexing and single-sequence inference behavior. Correct the adjacent filtering comments. No model, MSA or scientific selection policy is added.

Thanks to @rukibuki (#54), @data2code (#198), @adam-kral (#85), @MrGreyfun (#28), @almeida85 (#60), @RohanEapen (#81), and @fatemesalehi19-ctrl (#215).

Validation: six hotspot cases cover zero/one/two sites, empty/nonempty designs, exact geometric boundaries and fractional results. Independent tests cover real parser-to-analysis inputs, CLI/config overrides, the inclusive CSV filter boundary, visibility and nonconsecutive/offset residue numbering. The MSA feature request (#81) and generation-adherence question (#215) remain open.

.
.
.
.
.

Shared verification: four independent reviewers checked the combined changes. All 62 new regression cases pass on Python 3.11/Torch 2.7.1 and Python 3.12/Torch 2.15.0. The broader CPU suite has 863 passed, 17 skipped and the same seven pre-existing CSV identifier failures as baseline; it is not fully green. No GPU model-quality claim is made.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e582516193de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.