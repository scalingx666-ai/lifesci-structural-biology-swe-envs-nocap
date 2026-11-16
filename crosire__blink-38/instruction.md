# Issue

**Title:** Use duplex named pipe, so remote thread can quit

## Description

I want to Ctrl+C the blink.exe console and have that operation cause the remote thread to quit and free up memory.
This way, my app's memory leak checks don't report the remote thread allocs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `275387bbfd54`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.