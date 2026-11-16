# Issue

**Title:** Fix missing CLI executables in quippy-ase wheel

## Description

## Summary

- : `quip` and `gap_fit` executables missing from the `quippy-ase` PyPI wheel after meson migration
- Bundle CLI executables (`quip`, `gap_fit`, `md`) in the wheel package
- Register entry points via `[project.scripts]` in `pyproject.toml`
- Add CI tests to verify executables are bundled and functional

## Changes

1. **`quippy/pyproject.toml`**: Add `[project.scripts]` section with entry points for `quip`, `gap_fit`, `md`, and `quip-config`

2. **`quippy/install_executables.py`** (new): Install script that copies executables from the QUIP build directory to the quippy package directory during `meson install`

3. **`quippy/meson.build`**: Add `meson.add_install_script()` to run the install script

4. **`quippy/quippy/cli.py`**: Improve error handling with `_run_command()` helper that provides helpful error messages when executables are missing

5. **`.github/workflows/build-wheels.yml`**: Add `CIBW_TEST_COMMAND` to verify:
   - quippy imports correctly
   - All executable files exist in the package
   - `quip --help`, `gap_fit --help`, and `md --help` run successfully

## Test plan

- [x] Local build test: `meson setup builddir && meson compile -C builddir && meson install -C builddir --destdir=test_install`
- [x] Verified executables are copied to `quippy/` package directory with correct permissions
- [ ] CI wheel build should pass with new `CIBW_TEST_COMMAND` verification

🤖 Generated with [Claude Code](https://claude.ai/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `669785f9d57a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.