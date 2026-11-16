# Issue

**Title:** Learn flag

## Description

I added a learn flag to mdagent. This is so that if you want to force mdagent to only use existing/learned skills, rather than learn new skills, you can. I also added the flag to streamlit & added a unit test for initializing mdagent with the flag.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `427624a2451d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.