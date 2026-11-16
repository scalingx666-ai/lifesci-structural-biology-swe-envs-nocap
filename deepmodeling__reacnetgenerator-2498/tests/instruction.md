# Issue

**Title:** feat: validate and compare HDF5 timeline artifacts

## Description

## Summary

ReacNetGenerator can now persist a versioned HDF5 timeline, but a file being readable does not establish that its offsets, references, ranges, configuration and aggregate counts still agree. This PR turns the timeline into a verifiable and comparable analysis artifact:

- add `validate_timed_output()` with bounded scans over the full schema 1.0 structural and cross-table contract, including strict configuration JSON, HMM range-basis agreement, global sampling-stride consistency, reference integrity, maximal ranges and reaction totals;
- add deterministic semantic manifests and JSON-pointer comparisons that are independent of HDF5 compression/chunking and relocated path provenance by default, with an opt-in provenance-inclusive form;
- install a machine-readable schema descriptor and add `reacnetgenerator-check-timed-output` for CI validation, atomic manifest creation and comparison.

This provides a stable producer-consumer boundary for ReacNetGenerator and downstream applications. It gives scientific regression tests a result-level gate for future refactors, lets collaborators and archives compare analysis artifacts without comparing HDF5 bytes, and establishes a concrete schema 1.0 baseline for later migrations.

This follows #2494, which introduced the producer and compact readers. Keeping validation in a follow-up lets it enforce the accepted 1.0 contract without mixing the initial format, writer failure behavior and validation policy in one review.

## Semantics and limits

- The default manifest compares stored analysis content and non-location configuration. Source paths, source size/mtime, creation time, build version and path-valued configuration are included only with `include_provenance=True`.
- The manifest checksum is a deterministic comparison key, not a signature or raw-input content hash.
- Validation establishes artifact consistency. It does not establish chemical truth, transition states, barriers, kinetics or agreement with the original trajectory.
- The writer and schema version remain unchanged; transition evidence and output-default changes remain separate work.

## Validation

- `pytest tests/test_timedoutput.py tests/test_timedoutput_validation.py -q`: **67 passed**, with native math-library threads capped at one. The cases cover HMM on/off, one/two workers, repeated and empty sources with global stride, malformed tables/references/offsets/ranges/totals/metadata, bounded scans, layout-independent manifests, checksum verification, CLI atomic writes and cleanup after a publish failure.
- Repository CI type command: `ty==0.0.15` passed.
- Applicable pre-commit hooks passed, including Ruff, Ruff format, Velin, mdformat, cmake-format, JSON/TOML checks and license headers. Full environment initialization still encounters the repository's existing unrelated Prettier/npm `EALLOWGIT` setup failure, so applicable hooks were run individually.
- Source distribution and `cp310-abi3` macOS wheel built successfully. A fresh wheel installation contained the schema resource and CLI; both Python validation/manifest generation and the installed CLI validated a real schema 1.0 artifact.
- `git diff --check` passed.

Coding agent: Codex
Codex version: 0.154.0-alpha.6.2
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **New Features**
  * Added validation for timeline output files, including structural integrity and cross-table consistency checks.
  * Added semantic manifest generation and comparison to detect meaningful output differences.
  * Added the `reacnetgenerator-check-timed-output` command for validation, manifest creation, and comparison.
  * Added an installable machine-readable timeline schema descriptor.

* **Documentation**
  * Documented timeline validation, semantic comparison, manifest behavior, and command-line exit codes.

* **Tests**
  * Added coverage for valid and malformed timeline files, manifest stability, schema loading, and CLI safeguards.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b93fb733734f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.