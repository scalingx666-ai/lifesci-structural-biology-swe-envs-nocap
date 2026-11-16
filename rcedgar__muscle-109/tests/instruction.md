# Issue

**Title:** Mingw support

## Description

DISCLAIMER: This PR has been created with a lot of help from Claude. I do not have the skill set needed to review the details.

# Support building with mingw-w64 (gcc) on Windows

.

MUSCLE's Windows code paths in `myutils.cpp` are all guarded on `_MSC_VER`, so a gcc build for Windows takes the POSIX branches instead: it doesn't compile (no `<sys/resource.h>`), doesn't link (`GetPhysMemBytes()` is undefined for that combination), and misreports platform, path parsing, core count and the 32-bit memory cap where it does build. See the issue for detail.

Two commits, both confined to `src/myutils.cpp` and `src/myutils.h`.

## 1. Use `_WIN32` for the guards that are about the OS, not the compiler

`_WIN32` is defined by MSVC **and** mingw-w64. Switching these five guards changes which branch mingw takes and changes nothing anywhere else — MSVC, Linux and macOS preprocess to exactly the same code as before:

| Site | Was | Now |
|---|---|---|
| `GetPlatform()` (`BITS==32` and `BITS==64`) | `#ifdef _MSC_VER` | `#ifdef _WIN32` |
| `ParseFileName()` | `#if _MSC_VER` | `#ifdef _WIN32` |
| `GetUsableMemBytes()` | `#ifdef _MSC_VER` | `#ifdef _WIN32` |
| `GetMemUseBytes()` / `GetPhysMemBytes()` | `#ifdef _MSC_VER` | `#ifdef _WIN32` |
| `GetCPUCoreCount()` | `#ifdef _MSC_VER` | `#ifdef _WIN32` |

Plus one added include block: under `__MINGW32__`, include `<windows.h>` and `<psapi.h>` in place of `<sys/resource.h>`, at the same point in the file where the `_MSC_VER` branch does. mingw keeps the rest of the POSIX includes (`<unistd.h>`, `<fcntl.h>`, `<dirent.h>`, `<sys/time.h>`), which it provides.

Guards that genuinely **are** MSVC-specific stay on `_MSC_VER`, deliberately — this isn't a blanket find-and-replace:

- `crtdbg` / `_CrtSetDbgFlag`, and `IsDebuggerPresent` / `__debugbreak`
- the `fseeko` / `_fseeki64` shim, and `#define off_t __int64`
- `mylistdir()`'s `FindFirstFile` implementation

mingw-w64 provides working `fseeko`, `off_t` and `dirent`, so it belongs on the portable side of those.

## 2. Use `long long` for `int64`/`uint64` when `_WIN32` is defined

Windows is LLP64, so the existing `__GNUC__` typedefs (`long` / `unsigned long`) are 32-bit there, silently truncating the large-file helpers. Unix targets keep `long` and are byte-for-byte unchanged. The only two places that format a `uint64` — the `Die()` calls in `ReadStdioFile()` and `ReadStdioFile64()` — already cast to `(unsigned long)`, so no format strings are affected.

Happy to drop this commit if you'd rather keep the PR to a single concern.

## Two flags the mingw builder needs — not source changes

Recording these for anyone else attempting a gcc build; neither belongs in the repo now that `src/Makefile` is gone and builds go through `vcxproj_make.py`:

- link with **`-lpsapi`** — for `GetProcessMemoryInfo` and `GlobalMemoryStatusEx`
- compile with **`-D_FILE_OFFSET_BITS=64`** — otherwise mingw's `off_t` is 32 bits and MUSCLE refuses inputs above 2Gb with *"File too big for 32-bit version"*

## Testing

- Applies cleanly to current `main` (`6c69a9b`); drives the Windows builds in <!-- link your Yggdrasil PR -->, cross-compiled for `x86_64-w64-mingw32` and `i686-w64-mingw32` with gcc + OpenMP. <!-- add what you actually ran on Windows and what it produced -->
- `myutils.cpp` compiles warning-free on macOS with `g++-15 -fopenmp -std=c++11` after the change.
- Non-Windows behaviour is unchanged by construction rather than by testing: `_WIN32` is defined precisely where `_MSC_VER` was on the platforms you already build for, and the typedef change is gated behind `_WIN32`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c69a9b2c73c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.