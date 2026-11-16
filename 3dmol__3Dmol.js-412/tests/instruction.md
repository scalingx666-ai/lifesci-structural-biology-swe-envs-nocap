# Issue

**Title:** V3000 support

## Description

Hi there,

We recently had the need to support V3000 version mol files in 3Dmol.js. So we added the capability to parse this format to parsers.js.

The majority of the work was done by Matt Stahl (github username mattstahl00). I just merged it into the 3Dmol.js project and tidied up the code a bit.

Let me know what you guys think?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6fe108930791`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.