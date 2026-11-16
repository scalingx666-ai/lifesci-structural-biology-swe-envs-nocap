# Issue

**Title:** Fix protein cyclic conditioning from terminal backbone bonds

## Description

Protein features could mistake a terminal disulfide for backbone cyclization and miss a real cyclic peptide after another chain. Detect the first-N/last-C bond in either stored direction using global residue offsets. Preserve existing RNA/DNA terminal-bond behavior.

Thanks to @songxtracy-eng for #233 and @buerbaumer for identifying the atom-identity problem.

Validation: 36 regression cases cover terminal/internal/interchain bonds, disulfides, reversed endpoints, chain offsets, non-dense asym IDs, and RNA/DNA parser/CIF round trips. Independent review also exercised the relative-position encoder. This fixes conditioning; it does not claim that every generated structure will satisfy the intended chemistry.

.

Shared verification: four independent reviewers checked the combined changes. All 62 new regression cases pass on Python 3.11/Torch 2.7.1 and Python 3.12/Torch 2.15.0. The broader CPU suite has 863 passed, 17 skipped and the same seven pre-existing CSV identifier failures as baseline; it is not fully green. No GPU model-quality claim is made.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e582516193de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.