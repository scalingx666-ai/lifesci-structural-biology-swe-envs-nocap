# Issue

**Title:** Preserve literal identifiers and sequences in metric tables

## Description

Pandas 3 can apply missing-value inference after a text converter, turning identifiers such as `NA`/`null` and the valid sequence `NA` into missing values. This corrupts merge names and filtering inputs; related inferred-type reads also lose per-target IDs and Foldseek query/cluster names.

Read known text columns with missing-value inference disabled while preserving normal numeric inference for scores. Empty sequence cells remain missing. Use one shared reader for aggregate filtering/merging, per-target merge tables and Foldseek outputs.

Tests exercise literal null tokens, leading-zero and large numeric IDs, blank sequences versus blank numeric scores, quoted commas, embedded CRLF, Unicode, BOMs, empty/header-only tables, headerless TSV and real merge/filter/novelty/clustering consumers. Foldseek subprocess output is simulated; parsing, grouping and joining are real. The seven pre-existing CSV regression failures now pass. No metric definitions or scientific thresholds change.

Validation: 22 new retained regression cases in this PR. The combined final snapshot passed 1,056 CPU tests (17 skipped); 297 selected tests also passed on Python 3.11 / Torch 2.7.1 / pandas 2.2.3. Independent deep review found no remaining blocker. Model-specific environments, GPU inference and the external Foldseek binary were not exercised.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bbf7e8ff0011`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.