# Issue

**Title:** fix: select isomer representatives by frequency

## Description

## Summary

- aggregate detected molecule-frame occurrences across records before selecting an isomer representative for `miso=1` and `miso=2`
- choose the highest-frequency generated species name, with a lexicographic tie-breaker, and use it consistently in the compact name table, legacy molecule file, and optional timeline
- preserve full element, connectivity, and bond-order identity for failed-SMILES candidates until their individual frequencies have been counted, then apply the requested `miso` grouping
- preserve the single-pass `miso=0` path and clarify the CLI/Python API frequency definition

## Validation

- `.tox/3.12/bin/pytest tests/test_isomer_representative.py -q` (`16 passed`)
- `.tox/3.12/bin/pytest tests/test_isomer_representative.py tests/test_reacnetgen.py -q -k 'not gui'` (`65 passed, 5 deselected, 6 xfailed, 3 xpassed`)
- `.tox/3.12/bin/pytest --pyargs tests -q -k 'not gui'` (`342 passed, 8 skipped, 5 deselected, 6 xfailed, 3 xpassed`)
- Ruff 0.16.4 check and format check on all changed Python files
- `ty==0.0.15` (`0 errors`; two existing unused-ignore warnings in unchanged files)
- applicable pre-commit Python, Velin, and license hooks
- `git diff --check`

The default local tox command reached the macOS Tk GUI fixture and aborted during Tk initialization; the complete non-GUI suite above passed.

Coding agent: Codex
Codex version: codex-cli 0.145.0
Model: gpt-6-astra
Reasoning effort: medium

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
  - Improved isomer merging to select representatives based on molecule-frame occurrence counts before HMM filtering.
  - Resolves ties consistently using the lexicographically smallest generated species name.
  - Applies selected representatives consistently across molecule names, timelines, and related output.

- **Bug Fixes**
  - Added a fallback name for molecules whose SMILES conversion fails.

- **Documentation**
  - Clarified isomer representative selection behavior in command-line help and API documentation.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3cbcb15c1c11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.