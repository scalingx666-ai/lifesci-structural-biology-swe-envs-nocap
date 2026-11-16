# Issue

**Title:** Fix PyPI version override for tagged releases

## Description

## Summary

- Add `VERSION` file and dynamic versioning in `pyproject.toml` (meson-python reads version from `meson.build`)
- Update `meson.build` to version 0.10.0 with CI override from git tags
- Add workflow step to update version from git tag before wheel build
- Update f90wrap dependency to `>=0.3.0` throughout (now released on PyPI)
- Fix `CIBW_BUILD_VERBOSITY` warning (level 3 not supported by "build" frontend, changed to 1)
- Remove legacy `prepare-wheel-build.sh` and `openblas_support.py` scripts (not used by current workflow)

## How version override works

When building from a tagged release (e.g., `v0.10.1`):
1. Workflow extracts version from tag (removes `v` prefix)
2. Updates `quippy/VERSION` file
3. Updates version in `quippy/meson.build` via sed
4. cibuildwheel builds wheel with correct version

For non-tagged builds, uses the default version (0.10.0) in `meson.build`.

## Test plan

- [ ] CI builds pass on all platforms
- [ ] Tag a test release to verify version override works
- [ ] Verify wheel has correct version metadata

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03b6ef388457`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.