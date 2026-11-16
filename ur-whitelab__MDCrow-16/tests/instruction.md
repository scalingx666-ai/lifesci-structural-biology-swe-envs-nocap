# Issue

**Title:** Added security measures for API keys

## Description

This PR:

1. adds dotenv 
2. adds .env.example with instructions in readme
3. adds a pre-commit hook check for secrets

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c017fd76e88`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.