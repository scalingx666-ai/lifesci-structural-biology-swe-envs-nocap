# Issue

**Title:** feat: add optional HDF5 timeline output

## Description

## Summary

Add opt-in `--timed-output FILE` / `timed_output=` support for a versioned HDF5 timeline. Store effective molecule intervals, molecule definitions, aggregate reaction events, source-frame mappings and configuration, with compact readers in `reacnetgenerator.timedoutput`.

The parent writes bounded column batches to an exclusive sibling and atomically replaces the destination only after PATH succeeds. Readers use numeric blocks and retain compact intervals/counts. Source mappings distinguish repeated input occurrences and preserve global `stepinterval` sampling across files.

Rebased onto `3370d59a`, including the safeguards merged in #2493. The default remains disabled. Full semantic validation, transition evidence and a default-output cutover remain separate batches.

## Semantics and limits

- Molecule intervals use the same effective signal as atom-frame analysis, including HMM filtering; legacy molecule CSV reports observed frames. The schema documents that difference.
- Event counts match existing reaction recognition. Opt-in selects ordered event processing, so equal-count text reaction ordering may differ from unordered count-only reduction.
- Numeric buffers are bounded; upstream decoded signals, dictionaries, individual graphs and strings still scale with content. No production performance or constant-total-memory claim.
- Failures preserve the prior destination. Incomplete siblings remain for diagnosis. Reader header/type checks are not a semantic validator.

## Validation

- Isolated Python 3.12.7 environment with Open Babel 3.2.1, NumPy 2.5.3 and h5py 3.14.0: **298 passed, 8 skipped, 5 deselected, 6 xfailed, 3 xpassed** (`pytest tests -q -k 'not gui'`). Native math-library threads were capped at one; explicit multiprocessing tests retain their worker counts.
- **41 timeline tests** cover HMM on/off, one/two workers, CSV count equivalence, unchanged default text outputs, empty/repeated source occurrences and stride, bond/dump/XYZ/extxyz inputs, malformed numeric/offset/bond/name columns, reader block access/early close, scan boundaries for 1-D and column signals, byte bounds and failure publication. The timeline and LAMMPS parser subset passed **58 tests** after the rebase before the final focused name-table regression was added.
- A Python 3.10 manylinux2014 resolution selects h5py 3.14.0. The wheel built successfully, installed with h5py 3.14.0 in a fresh environment, and its CLI and public schema module loaded successfully.
- Repository-pinned ty 0.0.15, applicable pre-commit hooks (including Ruff, Velin and mdformat), and `git diff --check` passed. Full pre-commit environment initialization hit an unrelated Prettier/npm installation error; the repository configuration was unchanged and the applicable hooks were run separately.

Coding agent: Codex
Codex version: 0.154.0-alpha.6.2
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **New Features**
  - Added optional HDF5 timeline output (schema 1.0), enabled with `--timed-output` or Python configuration.
  - Added read-only Python APIs for reading timeline metadata, frames, molecules, ranges, species, and reaction events.
  - Timeline files are published atomically and included in generated artifacts.

- **Documentation**
  - Added comprehensive timeline format, configuration, and reader documentation.

- **Bug Fixes**
  - Improved validation of timeline data, frame mappings, and malformed inputs.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3370d59a9bb5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.