# Issue

**Title:** Add atomic_virial option

## Description

- Support inferred_atomic_virial across deploy, inference, calculator, and util flows.
- Introduce atomic_stress option in LAMMPS patching for atomic-stress pair sources.
- Maintain backward compatibility when atomic options are disabled.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95c811f56e64`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.