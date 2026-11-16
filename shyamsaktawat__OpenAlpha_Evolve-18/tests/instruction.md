# Issue

**Title:** Refactor environment configuration and update API key handling

## Description

This uses LiteLLM as suggested in #16. I tried it with Gemini, worked fine for me and no need for the api url unless it is needed.

- Removed the old .env_example file and created a new .env.example with updated structure.
- Updated app.py to check for the new PRO_API_KEY instead of GEMINI_API_KEY.
- Modified main.py to log the correct model names from the new settings.
- Updated code_generator/agent.py to use the new PRO_API_KEY and model configurations.
- Adjusted settings.py to reflect the new API keys and model settings, including LiteLLM configurations.
- Added .gradio to .gitignore to prevent tracking of Gradio files.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fd372e7a1d69`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.