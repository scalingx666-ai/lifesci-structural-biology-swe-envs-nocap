# Issue

**Title:** Integrate generic LiteLLM support for wider model compatibility

## Description

This change refactors the CodeGeneratorAgent to use LiteLLM in a more generic fashion, removing previous hardcoded dependencies on a specific 'PRO' model configuration.

Key changes:
- CodeGeneratorAgent now uses LITELLM_DEFAULT_MODEL from settings, allowing you to specify any LiteLLM-compatible model string.
- API key management is now primarily handled by LiteLLM, which automatically picks up keys from standard environment variables (e.g., OPENAI_API_KEY, COHERE_API_KEY).
- The PRO_MODEL, PRO_API_KEY, and PRO_BASE_URL settings have been removed from config/settings.py.
- CodeGeneratorAgent's generate_code and execute methods now accept an optional `litellm_extra_params` dictionary to pass additional parameters (like api_base or custom_llm_provider) directly to LiteLLM if needed for specific models.
- Test cases in code_generator/agent.py have been updated to mock litellm.acompletion calls, making them more robust and independent of external API availability.
- Documentation (README.md) and the example environment file (.env.example) have been updated to guide you on the new LLM configuration method.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f28b5a73d478`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.