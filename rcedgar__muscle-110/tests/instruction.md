# Issue

**Title:** Detect 64-bit targets via __LP64__

## Description

BITS is only set to 64 for x86_64 and arm64, so every other 64-bit
architecture (powerpc64, powerpc64le, riscv64, s390x, ...) silently
gets BITS=32. Besides shrinking uintb/uintB and the file-size helpers
to 32 bits, this makes GetPlatform() abort at the version banner on
asserta(sizeof(void *) == 4).

__LP64__ is predefined by GCC and Clang on all LP64 targets, so use it
as a generic fallback instead of extending the per-architecture list.
Found while fixing the FreeBSD port on powerpc64le.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2ab350f8f7c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.