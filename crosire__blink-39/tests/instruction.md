# Issue

**Title:** Use blink.exe's environment and working directory for compiles

## Description

Use blink.exe's environment and working directory for the compiler process. This way, the user can run blink.exe from their build prompt and our compiler process will run compiles similar to how they run from the user's prompt.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `87a91787c6bf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.