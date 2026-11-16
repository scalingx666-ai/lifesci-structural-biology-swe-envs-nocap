# Issue

**Title:** fix: preserve HMM conflict indices

## Description

Fix HMM conflict bookkeeping by mapping coordinates from the sliced molecule/timestep grid back to the original atom and timestep axes.

The regression test overlaps a molecule at non-zero atom and timestep indices and verifies that only the real location is marked.

Tests:
- `python -m pytest -q tests/test_reacnetgen.py -k getatomeach_maps_conflicts_to_original_indices`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Corrected conflict handling so atom and timestep references remain accurate when conflicting molecular records are encountered.
  * Ensured conflict flags are applied to the correct original atoms and timesteps, improving the reliability of conflict reporting.

* **Tests**
  * Added regression coverage to verify complete atom mappings and conflict results across processed data.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.