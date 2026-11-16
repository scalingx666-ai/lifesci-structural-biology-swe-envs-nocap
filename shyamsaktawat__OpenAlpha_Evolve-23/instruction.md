# Issue

**Title:** Add islands and enhance logging

## Description

I brought this up in #11 and you said you were working on the MAP elites, so here is the island modelling. 

It works for me using the .env
```
FLASH_API_KEY=...
FLASH_MODEL=gemini/gemini-2.0-flash-lite

PRO_API_KEY=...
PRO_MODEL=gemini/gemini-2.0-flash-lite

EVALUATION_API_KEY=...
EVALUATION_MODEL=gemini/gemini-2.0-flash-lite
```
However, if someone else may take their time and try it out and make sure everything works, that would be great!

I also added a `DEBUG` variable that can be set to display a bunch of information, if needed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2336cb7c3d83`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.