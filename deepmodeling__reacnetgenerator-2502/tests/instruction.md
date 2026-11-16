# Issue

**Title:** fix: respect bond orders in VF2 matching

## Description

## Summary

- pass separate atom and bond attribute matchers to NetworkX so `miso=0` distinguishes bond orders while retaining atom-label and atom-index permutation semantics
- apply the same matcher through the frequency-based representative-selection path introduced by #2503
- reject unsupported `miso` values at the CLI and Python API entry points, and validate before graph construction so bondless molecules behave consistently
- add regression coverage for all three modes, direct VF2 collection, forced SMILES-failure fallback, successful SMILES merging, and default/invalid parameter handling

## Validation

- `.tox/3.12/bin/pytest tests/test_isomer_identification.py tests/test_isomer_representative.py -q` (`33 passed`)
- `.tox/3.12/bin/pytest tests/test_isomer_identification.py tests/test_isomer_representative.py tests/test_reacnetgen.py -q -k 'not gui'` (`81 passed, 6 deselected, 6 xfailed, 3 xpassed`)
- `.tox/3.12/bin/pytest --pyargs tests -q -k 'not gui'` (`358 passed, 8 skipped, 6 deselected, 6 xfailed, 3 xpassed`); the six deselected tests are GUI tests
- Ruff 0.16.4 check and format check on all changed Python files
- `ty==0.0.15` (`0 errors`; two existing unused-ignore warnings in unchanged files)
- all applicable pre-commit hooks and `git diff --check`
- exact-head GitHub tox, CodeQL, pyright, Docker, JS, docs, wheels, Codecov, and pre-commit checks passed
- CodSpeed benchmark execution passed; its Walltime analysis compared the Intel Xeon Platinum 8573C head runner with the AMD EPYC 9V45 base runner, warned that the environments differ, and marked all 13 measured benchmarks slower

Coding agent: Codex
Codex version: codex-cli 0.155.0-alpha.9.2
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * Isomer identification now consistently handles atom labels, bond orders, and molecular composition across supported matching modes.
  * Results are no longer affected by atom ordering.

* **Bug Fixes**
  * Invalid `miso` settings are rejected consistently in the Python API and command-line interface.
  * SMILES-based collection provides fallback names when SMILES generation fails.
  * Molecule processing prevents invalid matching modes from proceeding.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `45f29c538412`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.