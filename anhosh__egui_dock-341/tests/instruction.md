# Issue

**Title:** Fix visual issue with collapsed leaves on detached windows

## Description

. Just fixing around the reasons mentioned in 

## AI Disclosure

Claude Code on Opus 5 (Effort Extra) has been used to test which commit introduced this issue (I manually confirmed that this wasn't present in 0.15, so I asked an agent running  and finding the exact commit that did this) and generate code. I have reviewed every line of code generated, confirmed that the commit it found was indeed the cause, and edited the output.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2878ad444da`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.