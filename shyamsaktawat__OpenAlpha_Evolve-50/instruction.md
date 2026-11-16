# Issue

**Title:** Fix: Update documentation for Google Auth and other improvements

## Description

This commit addresses several documentation issues:

- Updates the README.md to include clear instructions for configuring Google Authentication for LLMs, including environment variables like GOOGLE_APPLICATION_CREDENTIALS and GEMINI_API_KEY.
- Clarifies the LLM configuration section, emphasizing LiteLLM's role and directing you to its documentation for other providers.
- Corrects numbering inconsistencies in the "Getting Started" section of README.md.
- Improves the YAML example for defining custom tasks in README.md, making the test_cases structure clearer.
- Adds GOOGLE_APPLICATION_CREDENTIALS placeholder to .env.example for better guidance on Google Cloud setup.
- Includes minor formatting fixes and clarifications throughout README.md.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f4149887ed09`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.