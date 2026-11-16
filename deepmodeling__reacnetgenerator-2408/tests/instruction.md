# Issue

**Title:** feat: support customize cutoff-based detection by ase

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * ASE-based bond detection with per‑pair custom cutoffs and a global cutoff multiplier; avoids duplicate bonds across periodic boundaries.
  * Optional SciPy-powered connected‑components grouping for bond clustering.

* **Improvements**
  * Auto-enables ASE mode when custom cutoffs or a non‑default multiplier are supplied (with a warning).
  * New CLI flags: --use-ase, --ase-cutoff-mult, --ase-pair-cutoffs.
  * Improved logging during LAMMPS file processing.

* **Tests**
  * Expanded coverage for ASE mode, CLI args, cutoff parsing, bond detection, deduplication, and clustering.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7c28d9c89ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.