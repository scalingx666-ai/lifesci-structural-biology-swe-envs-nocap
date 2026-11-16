# Issue

**Title:** Fix incorrect type in fgetc and fputc

## Description

User reported issue using QUIP with GAP on Isambard 3 which is a Nvidia Grace CPU system.  This is an Arm/aarch64 architecture where char is unsigned whilst on x86 is it signed.  On x86 there is no problem since int and char are both signed.  On Arm/aarch64 when using fgetc with a char to check for EOL, it will never find EOL since -1 is wrapped to 255.

It seems it should be int anyway looking at standard for fgetc https://en.cppreference.com/w/c/io/fgetc and fputc https://en.cppreference.com/w/c/io/fputc

This fix should work on both x86 and aarch64.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `61fbbd7bb1f0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.