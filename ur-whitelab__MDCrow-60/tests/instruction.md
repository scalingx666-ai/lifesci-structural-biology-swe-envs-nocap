# Issue

**Title:** adding missing unit tests for agent-related functions

## Description

this pr is to add the test functions for all agent-related functions that we wrote, except those that use llm calls (we can add these later if desired). This PR does not add the tool tests.

this PR also changes the imports for langchain.prompt and langchain.LLMChain to their new import locations

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bb93db79724d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.