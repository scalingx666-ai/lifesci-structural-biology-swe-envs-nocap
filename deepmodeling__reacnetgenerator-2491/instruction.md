# Issue

**Title:** feat: support explicit output directories

## Description

## Summary

- add output_dir to the Python class API and CLI
- keep legacy basename-derived paths unchanged when the option is omitted
- expose semantic artifact paths through generator.artifacts and reacnetgenerator.run
- add contract tests and user documentation

## Verification

- git diff --check
- Python bytecode compilation
- output-dir API/CLI contract smoke test with the ReacNet C-extension stubbed
- Full pytest remains pending in the remote environment because pytest and the
  compiled reacnetgenerator.dps extension are not installed there.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * Added an `--output-dir` CLI option to place generated artifacts in a dedicated directory.
  * Added a Python `run()` API with selectable output stages and artifact paths.
  * Added configurable limits for component atom counts and size fractions.
  * Results now include parameter provenance for reproducibility.
  * Explicit filenames continue to take precedence for compatibility.
  * Unsupported or empty stage selections are rejected with a clear error.

* **Bug Fixes**
  * Corrected image output naming when labels are hidden, preserving the configured directory.

* **Documentation**
  * Added CLI and Python guidance for output directories, artifact paths, and provenance.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01e1f3315d11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.