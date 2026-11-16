# Issue

**Title:** Fetch Git LFS content in release build checkout

## Description

## What

Adds `lfs: true` to the `actions/checkout` step in the **release** workflow (`pythonpublish.yml`) so the wheel/sdist are built from real file contents rather than LFS pointer stubs.

## Why

- `main` already has an LFS tracking rule for `jax_md/_nn/uma/checkpoints/*.npz` in `.gitattributes`. There are no LFS objects in the repo yet, so this change is a **no-op today** — it only affects checkouts once LFS-tracked files land.
- #411 adds seven LFS-tracked `.eqx` model checkpoints that the model loaders resolve relative to `__file__`, so the published package must contain the real bytes. Without this change, a release cut after #411 merges would silently package 134-byte pointer files instead of model weights.
- Merging this first (it's independent of #411) closes that window.

`build.yml` (CI test matrix) is intentionally left untouched — the current matrix jobs don't load the new checkpoints and pass without LFS.

## Note for after #411

With the checkpoints included, the built wheel will be ~194 MiB, which exceeds PyPI's default 100 MiB per-file limit. Before the next release that includes #411, the project needs either a  from PyPI (grantable up to 1 GiB), or a follow-up that excludes `*.eqx` from the wheel and fetches weights at runtime (e.g. via `huggingface_hub`, as the UMA models already do).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1866601bb25b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.