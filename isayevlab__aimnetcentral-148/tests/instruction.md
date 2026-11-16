# Issue

**Title:** Release 0.2.5

## Description

Prepares the 0.2.5 release: everything on main since 0.2.0 (including the neighbor-list fix for #147 and CUDA-graph replay from #146), refreshed runtime dependencies, Python 3.14 support, and a corrected CHANGELOG.

**Note for users:** 0.2.5 is a pre-1.0 release with breaking changes despite the patch-level number. The CHANGELOG lists them at the top.

## Changes in this PR
- **Dependencies:** the lock was refreshed for the runtime stack only, and the declared minimums are unchanged (`torch>=2.10`, `warp-lang>=1.13,<2`, `nvalchemi-toolkit-ops>=0.4.1`).
  - torch 2.14.1, triton 3.8.0, warp-lang 1.18.0, nvalchemi-toolkit-ops 0.5.0, numpy 2.4.6/2.5.4, ase 3.29.0, torch-sim-atomistic 0.6.2, pytorch-ignite 0.5.5, huggingface-hub 2.3.0.
  - pillow 13.0.0 clears the nine open Pillow security alerts.
  - Development and training tooling is unchanged.
  - `mkdocs` is capped below 2 in the docs group.
- **Python 3.14:** added to the classifiers and to the tests-core and tests-torchsim CI matrices. The `sella` and `pysis` extras are not installable on 3.14 yet: the locked jax/jaxlib has no cp314 wheels.
- **CHANGELOG `[0.2.5]`:**
  - a breaking-changes summary;
  - restored entries lost in earlier merges (Ewald migration, long-range and batched Hessians, `hessian_vector_product`, static geometry cache, GPU validation tool, compile speedup, #86 behavior changes, citation);
  - deduplicated the torch entries and corrected the nvalchemi-toolkit-ops floor;
  - the CUDA-graph entry.
- **Docs:**
  - a known limitation on the aimnet2 and aimnet2_2025 model pages: compressed geminal hydrogens can collapse below an H–H distance of about 0.75 Å (#139), with geometry filters to apply until the next model release;
  - the deterministic-mode docs now state that Hessians are outside the bitwise guarantee (#143).

## Validation
On an L40S with the locked dependency set (torch 2.14.1+cu130, warp-lang 1.18.0, nvalchemi-toolkit-ops 0.5.0):

| Check | Result |
|---|---|
| Default run (`-m "not gpu and not network and not slow"`) | 1194 passed, 26 skipped, 55 s |
| All `gpu`-marked tests | 406 passed, 4 skipped, 1 expected xfail (#140 packed forces) |
| CUDA-graph test files, slow tests included | 319 passed |
| Python 3.14 default run | 967 passed, 18 skipped |
| `ruff check` | clean |
| mypy | 23 errors (baseline 24–25) |
| `mkdocs build --strict` | passes |

A `v0.2.5` tag in a scratch clone builds `aimnet-0.2.5.tar.gz` and `aimnet-0.2.5-py3-none-any.whl`. `twine check --strict` passes on both, and the release workflow's filename check accepts them.

## Before tagging
- Confirm the PyPI trusted publisher (aimnet → Manage → Publishing): owner `isayevlab`, repository `aimnetcentral`, workflow `on-release-main.yml`, environment blank. This is the first release published through trusted publishing.
- Update the CHANGELOG date if the tag is not cut on 2026-10-24.

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cbdcff492ef8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.