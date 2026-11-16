# Issue

**Title:** ci(torch): support PyTorch 2.14 without requiring it

## Description

Adds PyTorch 2.14 to the supported range, tested but not required.

**What changes**

- `2.14.*` joins the per-pull-request `tests-torch` matrix.
- The documented range in `docs/getting_started.md` and `docs/gpu_validation.md` becomes 2.8 to 2.14.
- `scripts/gpu_validate.sh` includes 2.14 in its default version list, so the manual GPU sweep covers it.

**What deliberately does not change**

The resolver floor stays `torch>=2.8` with no upper bound, and the locked torch stays at 2.13.0. A fresh `uv sync` and the default `tests-core` lane still land on 2.13, so 2.14 is supported and exercised without being imposed on anyone.

**Why this is low risk**

It promotes a signal that already existed rather than betting on an untested version. The scheduled `torch-latest` lane has been reinstalling the newest stable CPU wheel on top of the locked environment every Monday for weeks. Its most recent run installed `torch 2.14.0+cpu` and passed 627 tests with 50 skipped. This change moves that coverage from a weekly non-blocking signal to a per-pull-request gate.

That lane keeps its purpose: it now probes whatever ships after 2.14.

Branch protection is unaffected, since no `tests-torch` lane is among the eight required checks. The new lane will report on pull requests and can be promoted to required later if you want it to block.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `914e28df3133`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.