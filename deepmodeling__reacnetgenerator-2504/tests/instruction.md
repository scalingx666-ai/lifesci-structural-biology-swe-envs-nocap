# Issue

**Title:** feat: default HDF5 timeline for timed outputs

## Description

## Summary

- automatically write a schema 1.1 HDF5 timeline when molecule-time or reaction-event output is requested, including nonempty molecule frame/timestep filters
- use `<first-input>.timeline.h5`, or `timeline.h5` below `output_dir`; retain `--timed-output FILE` as an explicit path override
- preserve existing CSV output and filtering, keep ordinary runs without timed output unchanged, and update CLI/Python documentation and regression coverage

This follows #2499. CSV removal and scheduling changes remain separate contributions.

## Validation

- Python 3.13 timeline and validator regression set: `83 passed`
- installed-package tox environment, complete non-GUI suite with coverage: `373 passed, 8 skipped, 6 deselected, 6 xfailed, 3 xpassed`; the six deselected cases are GUI tests
- 20 legacy artifacts were byte-identical to the official base across HMM on/off and one/two workers
- `ty==0.0.15` (no errors; two warnings in unchanged files), applicable pre-commit hooks, and `git diff --check`
- Sphinx HTML build (11 warnings), wheel build, and clean Python 3.13 installation covering API/CLI default paths, preserved CSV output, schema 1.1 validation, and the validator CLI

Coding agent: Codex
Codex version: codex-cli 0.162.0-alpha.2
Model: gpt-6.1-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **New Features**
  * Molecule-time and reaction-event output now also creates a schema 1.1 HDF5 timeline alongside the existing CSV files. Molecule filters can also trigger timeline output.
  * Timelines use a default path based on the input file or output directory; `--timed-output` lets you choose a different path or request a timeline on its own.
* **Documentation**
  * Updated the Python guide, command-line help, and timeline schema guide with output behavior, paths, and validation details.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf31e134ff1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.