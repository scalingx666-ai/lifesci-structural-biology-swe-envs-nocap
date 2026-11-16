# Issue

**Title:** chore: bump nvalchemi-toolkit-ops to 0.4.0 and warp-lang to 1.13+

## Description

Bumps nvalchemi-toolkit-ops 0.3.1 -> 0.4.0 (warp-lang 1.11 -> 1.15, required >=1.13 by upstream).

Verification on an L40S box:
- All aimnet-used imports intact (neighbors, NeighborOverflowError, dispersion.dftd3, electrostatics).
- Default CPU suite 435 passed / 0 skipped; GPU marker suite 116 passed; full PBC suite 56 passed; kernel-registration and conv_sv_2d_sp suites green on warp 1.15.
- Cross-version numerics vs 0.3.1: energies, charges, and Hessians bit-identical; explicit force/virial outputs shift by at most 6.7e-05 eV/A (periodic DSF+D3 case) — 40x inside the project's own cross-version acceptance (compare_observables force_atol = 1e-4 Hartree/A). Consistent with upstream's rework of the direct-output force paths.

Two observations for follow-up:
1. Upstream deprecated the direct-output flags (compute_forces/compute_virial) that aimnet's Ewald/PME path passes; they still work but now emit DeprecationWarnings (thousands per PBC test run). Migrating to the autograd-based API should be its own PR.
2. Issue #93 note: under 0.4.0 the batched nondeterminism (~1e-7 eV) now also appears at B=2 (previously bitwise-stable below B=4). Same noise floor, slightly wider surface.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6492e059ec8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.