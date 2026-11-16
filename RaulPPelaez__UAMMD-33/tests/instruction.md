# Issue

**Title:** Install headers

## Description

I added a top-level CMake file that installs every uammd header to `$CMAKE_INSTALL_PREFIX/include/uammd`.

I also added a FindUAMMD.cmake module that looks for these, so that it is possible to call:

```cmake
find_package(UAMMD REQUIRED)
include_directories(${UAMMD_INCLUDE_DIRS})
```
regardless of where UAMMD is installed.
FindUAMMD.cmake is installed to `$CMAKE_INSTALL_PREFIX/share/cmake/Modules`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `66b8b37963cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.