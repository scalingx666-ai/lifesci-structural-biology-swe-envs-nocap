# Issue

**Title:** Reject duplicate YAML keys with file and line diagnostics

## Description

Repeated YAML mapping keys silently discard earlier settings, including the `id` and `structure_groups` examples reported in #232. A dedicated SafeLoader subclass rejects repeated explicit keys before map flattening and reports the source file and line.

Apply it to design specifications, included scaffold YAML, redesign masks and steps manifests. Preserve safe-tag restrictions, alias reuse, merge-key precedence and explicit overrides of inherited values without modifying PyYAML's global loader.

Thanks to @dhiraj82 for #232 and @buerbaumer for diagnosing both duplicate-key examples. This fixes silent configuration loss; the broader target-assembly/modeling question remains open.

Tests cover nested and flow duplicates, implicit scalar-key collisions, repeated merge keys, anchors and recursive values, nested/reused merges, unsafe tags, malformed/multiple documents, file/line diagnostics at all four entrypoints and all 77 repository example YAML files. Independent review also compared 1,000 randomized merge/alias documents with SafeLoader.

Validation: 42 new retained regression cases in this PR. The combined final snapshot passed 1,056 CPU tests (17 skipped); 297 selected tests also passed on Python 3.11 / Torch 2.7.1 / pandas 2.2.3. Independent deep review found no remaining blocker. Model-specific environments, GPU inference and the external Foldseek binary were not exercised.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bbf7e8ff0011`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.