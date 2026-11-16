# Issue

**Title:** Rebuild analysis scratch CIFs from the current structure

## Description

Hydrophobic-patch analysis reused any existing design-only CIF, including empty, truncated or valid but stale files. Always regenerate original/refolded scratch CIFs from the current structure before reading them, preserving cleanup and metric definitions.

Thanks to @kdnghw for #138 and @ejckej for confirming that removing the empty temporary file resolved the failure.

Validation: eight regression cases cover missing, empty, truncated and unrelated valid scratch contents for both original and refolded structures. Scores match a fresh reference; cleanup is verified. Related SASA/novelty tests pass. No historical 15,000-design campaign was rerun.

.

Shared verification: four independent reviewers checked the combined changes. All 62 new regression cases pass on Python 3.11/Torch 2.7.1 and Python 3.12/Torch 2.15.0. The broader CPU suite has 863 passed, 17 skipped and the same seven pre-existing CSV identifier failures as baseline; it is not fully green. No GPU model-quality claim is made.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e582516193de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.