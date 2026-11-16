# Issue

**Title:** Add FindTREXIO.cmake module to support manual library path specification

## Description

CMake configuration fails when TREXIO is installed in a non-standard location, even when `TREXIO_INCLUDE_DIR` and `TREXIO_LIBRARY` are explicitly specified. The `find_package(TREXIO)` call in mdlib's CMakeLists.txt has no module to process these variables.

## Changes

**Created `ext/mdlib/cmake/FindTREXIO.cmake`**
- Respects manually specified `TREXIO_INCLUDE_DIR` and `TREXIO_LIBRARY` CMake variables
- Falls back to searching standard paths and `TREXIO_ROOT`/`TREXIO_PREFIX` locations
- Sets `TREXIO_FOUND`, `TREXIO_LIBRARIES`, `TREXIO_INCLUDE_DIRS` per CMake conventions
- Creates `TREXIO::TREXIO` imported target

**Updated `README.md`**
- Documents manual path specification for custom TREXIO installations

## Usage

```bash
TREXIO_PREFIX="/home/user/trexio-2.6.0/install"
cmake -DVIAMD_ENABLE_TREXIO=ON \
      -DTREXIO_INCLUDE_DIR="$TREXIO_PREFIX/include" \
      -DTREXIO_LIBRARY="$TREXIO_PREFIX/lib/libtrexio.so" \
      ..
```

Standard installations continue to work via automatic detection.

<!-- START COPILOT CODING AGENT SUFFIX -->

<details>

<summary>Original prompt</summary>

> I am havong cmake configuration issue. Even if trexio is well install
>
> (base) mathieu-linares@mathieu-linares-730QFG:~/app/viamd/trexio-2.6.0/install$ ls
> include  lib
>
> THe cmake .. command is failing with the command.
>
> TREXIO_PREFIX="/home/mathieu-linares/app/viamd/trexio-2.6.0/install"
>
> cmake -DVIAMD_ENABLE_TREXIO=ON \
>       -DTREXIO_INCLUDE_DIR="$TREXIO_PREFIX/include" \
>       -DTREXIO_LIBRARY="$TREXIO_PREFIX/lib/libtrexio.so" \
>       -DCMAKE_BUILD_TYPE=RelWithDebInfo \
>       ..

</details>

<!-- START COPILOT CODING AGENT TIPS -->
---

✨ Let Copilot coding agent  — coding agent works faster and does higher quality work when set up for your repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0c3d52e3e8ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.