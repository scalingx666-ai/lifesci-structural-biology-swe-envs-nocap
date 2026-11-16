# Issue

**Title:** Change to OpenAI compatibility API configuration

## Description

Hi,

I refactored the code to instead of relying on google's generativeai library, instead we use the openai library. This allows us to use almost any provider. I updated the code with the placeholder values such that it should work exactly the same as it did before.

Let me know if there is something I missed.

This should close #2 and #6 .

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `296071d249b0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.