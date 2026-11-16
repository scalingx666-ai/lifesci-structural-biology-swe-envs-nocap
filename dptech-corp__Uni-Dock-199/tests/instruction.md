# Issue

**Title:** build: CUDA 12.8→12.9.2 + base on ubuntu24.04

## Description

## What

Bump the CUDA toolkit from **12.8.0 → 12.9.2** (latest 12.x) in the three places it's pinned:

- `unidock/Dockerfile` — `ARG CUDA_VERSION` (base image `nvidia/cuda:12.9.2-devel-ubuntu22.04`)
- `.github/workflows/ci_test_unidock.yml` — container image
- `.github/workflows/ci_test_tools.yml` — container image

`unidock_tools/Dockerfile` inherits the toolkit automatically via `BASE_IMAGE=dptechnology/unidock:latest`.

## Why 12.9.2 and not CUDA 13.x

CUDA 13.x is newer, but for a docking tool with a broad GPU user base it has two hard costs:

1. **CUDA 13.0 removed Volta (`sm_70` / V100)** offline compilation (along with Maxwell/Pascal). Our arch list still targets `sm_70`, so 13.x would either fail to build or force dropping V100 — still a very common docking GPU.
2. **CUDA 13.x raises the driver floor to ≥ 580** for *all* users. (For reference, even a current B200 host on driver 595 caps at CUDA 13.2 and the 13.3 image refuses to start there.)

**12.9.2 is the latest toolkit that drops nobody** — it keeps every architecture the build targets while picking up the newest 12.x toolchain, and runs on existing drivers.

## Empirical verification (B200 host, driver 595 / CUDA 13.2)

`nvcc` per-arch compile inside each candidate `-devel-ubuntu22.04` image:

| arch | 12.8.0 (current) | **12.9.2 (this PR)** | 13.2 / 13.3 |
|---|---|---|---|
| `sm_70` V100 | ✅ | **✅** | ❌ removed |
| `sm_75` T4 | ✅ | ✅ | ✅ |
| `sm_80` A100 | ✅ | ✅ | ✅ |
| `sm_86` / `sm_89` | ✅ | ✅ | ✅ |
| `sm_90` H100 | ✅ | ✅ | ✅ |
| `sm_100` B200 | ✅ | ✅ | ✅ |
| `sm_103` B300 | – | ✅ | ✅ |
| `sm_120` RTX 50 | ✅ | ✅ | ✅ |
| `sm_121` GB10 | – | ✅ | ✅ |

- Base OS unchanged: **Ubuntu 22.04.5 LTS**; system Boost still **1.74** (so the default Docker build is unaffected by the `FETCH_BOOST` ≥ 1.90 fix from #189).
- **Image build + docking no-regression:** the `unidock` image was built from this Dockerfile both ways (`--build-arg CUDA_VERSION=12.9.2` and `=12.8.0`) and the same `1iep` case docked with the same seed on a B200 — _(result appended below once the build completes)_.

No source or arch-list changes; this is purely the pinned toolkit version.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95e409172b15`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.