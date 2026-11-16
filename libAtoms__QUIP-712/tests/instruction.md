# Issue

**Title:** Add CMake build support for find_package(QUIP)

## Description

## Summary

Adds CMake package config support so LAMMPS and other CMake projects can use QUIP libraries via `find_package(QUIP)`.

## Changes

- Add `cmake/QUIPConfig.cmake.in` template that creates imported targets:
  - `QUIP::fox`, `QUIP::libAtoms`, `QUIP::GAP`, `QUIP::Potentials`, `QUIP::Utils`
  - `QUIP::QUIP` (unified interface target)
- Use Meson's cmake module to generate `QUIPConfig.cmake` and `QUIPConfigVersion.cmake` during installation
- Add `install: true` to all library definitions so they are installed to the lib directory
- Update fox and GAP submodules to include `install: true`

## Usage

After building and installing QUIP with Meson:

```bash
meson setup builddir -Dgap=true
meson compile -C builddir
meson install -C builddir
```

CMake projects can then use:

```cmake
find_package(QUIP REQUIRED)
target_link_libraries(myapp QUIP::QUIP)
```

## Submodule PRs

This PR depends on corresponding changes in the submodules:
- fox: https://github.com/libAtoms/fox/compare/cmake-install-support
- GAP: https://github.com/libAtoms/GAP/compare/cmake-install-support

## Test plan

- [x] `meson setup` succeeds with `-Dgap=true`
- [x] `meson install` installs all libraries and CMake config files
- [x] Test CMake project can `find_package(QUIP)` and access all variables/targets

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1dfd2fec15a9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.