# Issue

**Title:** feat: bump CUDA to 12.8 and add Blackwell GPU support

## Description

## Summary
- Add `sm_100` (B100, B200, GB200) and `sm_120` (RTX 50, B40) to `CMAKE_CUDA_ARCHITECTURES` for native Blackwell builds
- Bump CI container images from CUDA 12.2 to 12.8 (minimum required for Blackwell native cubins)
- Bump Dockerfile default CUDA version from 12.0 to 12.8

CUDA 12.8 is the minimum toolkit version that can generate native Blackwell cubins. Older toolkits can only run on Blackwell via PTX JIT compilation, which has performance overhead.

## Files changed
- `unidock/CMakeLists.txt` — add architectures 100 and 120
- `unidock/Dockerfile` — default CUDA 12.0 → 12.8
- `.github/workflows/ci_test_unidock.yml` — CUDA 12.2 → 12.8
- `.github/workflows/ci_test_tools.yml` — CUDA 12.2 → 12.8

## Test plan
- [ ] CI builds successfully with CUDA 12.8 container
- [ ] Verify existing GPU architectures (70–90) still compile
- [ ] Verify sm_100 and sm_120 targets compile

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f72ab58c847`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.