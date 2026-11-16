# Issue

**Title:** fix: compact Step 3 state storage

## Description

## Summary

- store the Step 3 atom-to-molecule matrix in a disk-backed memmap using the narrowest lossless unsigned integer dtype
- bit-pack the conflict matrix and expose a lazy frame-major view to reaction analysis
- deduplicate molecule names through a compact molecule-ID-to-species table with variable-length object strings
- clean up temporary mappings on normal completion, input errors, and partial allocation failures
- keep HMM records aligned with retained origin metadata, including all-zero filtered signals
- prefer output-adjacent scratch storage and retry in the default temporary directory on `PermissionError`, allowing destinations such as `/dev/null`

## Motivation

Current master keeps dense `int32` atom-to-molecule and Boolean conflict matrices in memory. These arrays require about `5 * N * step` bytes, before multiprocessing and temporary-array overhead. Large atom/frame combinations can therefore exhaust memory even with bounded result delivery.

This change reduces the representation size and moves atom-frame storage from heap arrays to disk-backed mappings. Memory-mapped pages can still consume resident memory and page cache. Output formats and public CLI options remain unchanged.

Strict stream pairing is retained. When origin output keeps a filtered molecule's metadata, the HMM producer now writes the corresponding zero signal rather than leaving the streams misaligned.

## Validation

- 22 focused tests passed: `tests/test_step3_compatibility.py`, `tests/test_step3state.py`, and the existing conflict-index, mismatched-stream, compact-reaction-event, packed-conflict, object-name reaction-matrix, and VF2/SMILES selective-output regression tests.
- The HMM/origin regression compares atom routes and both reaction outputs byte-for-byte with origin output disabled; the fixture is checked to contain filtered molecules.
- Permission-fallback tests inject failures at both the first and second preferred allocation and verify fallback contents and cleanup.
- Four bounded smoke cases passed: HMM/SMILES with split output, no-HMM/VF2, no-HMM/miso, and atom-route output to `/dev/null`. Each retained the checked-in reaction SHA-256.
- Four targeted upstream component-guard tests passed.
- Ruff 0.16.4 lint and format checks passed for all seven PR Python files.
- ty 0.0.15 passed for the three changed production modules; `git diff --check` passed.

Local runs used Python 3.12, the worktree Python sources, existing native dependency extensions, and one worker per trajectory case. GitHub Actions on `9ca3a00f` also passed: tox reported 176 passed, 6 xfailed, and 4 xpassed; all wheel builds, static checks, coverage, docs, and performance checks succeeded. Publication/deployment jobs were skipped. CodeRabbit returned a successful status with a rate-limit notice rather than a fresh full review.

## Scope

The branch includes current master through `01e1f331`, retaining its component guards and independent bounded-analysis changes. The compact representations replace the overlapping dense-state changes.

Atom-frame state remains proportional to `N x step` on disk. Remaining Step 3 scans and per-task copies are outside this PR.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Performance & Reliability**
  * Improved reaction-path processing for large datasets with more compact, disk-backed temporary storage.
  * Reduced memory usage for molecule names, atom-frame data, and conflict information.
  * Added automatic cleanup of temporary processing data, including after errors.
  * Improved detection of incomplete or mismatched reaction records.
  * Preserved reaction-event results while handling atom-frame conflicts more reliably.

* **Tests**
  * Expanded coverage for compact storage, data types, transposition, cleanup, conflict handling, and large-value scenarios.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01e1f3315d11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.