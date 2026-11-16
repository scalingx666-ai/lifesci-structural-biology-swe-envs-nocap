# Issue

**Title:** feat: add transition evidence to HDF5 timelines

## Description

## Summary

- extend the opt-in HDF5 timeline introduced in #2498 to schema 1.1 with one evidence row per inferred connected reaction instance
- link each aggregate reaction count to its reactant and product molecule IDs, require those instances at frames `t` and `t + 1`, and store the exact canonical bond-order differences between their molecule graphs
- add frozen public reader records, schema-aware validation, semantic manifests, a machine-readable descriptor, documentation, and corruption tests while retaining schema 1.0 read and validation support
- keep CSV-only reaction-event output unchanged; instance IDs are requested from workers only when the HDF5 timeline is enabled

## Semantics and limits

Transition evidence records ReacNetGenerator's inferred connected-component assignment and the corresponding stored molecule graphs. It provides audit provenance for aggregate counts; it is not transition-state evidence, a barrier or kinetics estimate, or independent chemical ground truth. The timeline remains opt-in and does not store coordinates. One connected instance can exceed the configured numeric scan block size, and schema 1.1 files grow with the number of inferred instances.

## Validation

- `python -m pytest tests/test_timedoutput.py tests/test_timedoutput_validation.py -q` (`74 passed`)
- affected reaction/indexed/pipeline regression set (`48 passed`)
- GitHub Actions checks for tox, type checking, CodeQL, documentation, source distribution, and Linux, macOS, and Windows wheel builds
- `ty==0.0.15` and Ruff 0.16.4 checks
- relevant pre-commit hooks for all changed files, including mdformat, Velin, JSON checks, Ruff, and Ruff format
- Sphinx HTML build in the tox docs environment
- wheel build, clean Python 3.13 installation, and installed schema descriptor smoke check (`1.1`)

Coding agent: Codex
Codex version: codex-cli 0.145.0
Model: gpt-6-astra
Reasoning effort: medium

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **New Features**
  - Timed-output timelines now support schema 1.1 with auditable, instance-level reaction evidence.
  - Evidence includes participating molecules and inferred formed, broken, or order-changed bonds.
  - Transition evidence can be read incrementally.
  - Existing schema 1.0 aggregate-only timelines remain supported.

- **Validation**
  - Added checks for participant integrity, atom conservation, bond changes, and reaction-count consistency.

- **Documentation**
  - Updated command-line help and API documentation for schema 1.1 and transition evidence.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3cbcb15c1c11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.