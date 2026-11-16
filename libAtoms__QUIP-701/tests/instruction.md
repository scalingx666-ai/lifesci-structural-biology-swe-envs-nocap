# Issue

**Title:** Add NumPy 2.x support with conditional dependencies

## Description

## Summary

Updates the runtime dependency from `numpy>=1.20` to `numpy>=2.0`.

## Rationale

The current `numpy>=1.20` build dependency causes pip to install the latest NumPy (2.x) at build time. This means the published wheels are already built against NumPy 2.x and are **incompatible with NumPy 1.x at runtime** due to ABI changes.

However, the runtime dependency still says `numpy>=1.20`, which allows users to have NumPy 1.x installed. When they install quippy-ase from PyPI with NumPy 1.x, they get cryptic runtime errors instead of a clear dependency conflict.

This PR makes the runtime requirement explicit: `numpy>=2.0`. Users with NumPy 1.x will now get a clear error at install time:
```
ERROR: quippy-ase requires numpy>=2.0, but you have numpy 1.26.4
```

Users who need NumPy 1.x compatibility can still build quippy from source with their desired NumPy version.

## Test plan

- [x] All CI builds pass (no change to build process, just runtime metadata)
- [x] Verified wheels are built against NumPy 2.x (CI logs show "NumPy 2.0+ detected")

🤖 Generated with [Claude Code](https://claude.ai/code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56af6c8f98ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.