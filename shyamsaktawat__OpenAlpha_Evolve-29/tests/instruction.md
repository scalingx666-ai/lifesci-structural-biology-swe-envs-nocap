# Issue

**Title:** feat: Implement Docker-based sandboxing for code evaluation

## Description

This commit introduces a more robust and secure code evaluation mechanism by leveraging Docker containers.

Key changes include:

- Modified `evaluator_agent/agent.py` to execute evaluation scripts within Docker containers. The `_execute_code_safely` method now constructs and runs `docker run` commands.
- Added `evaluator_agent/Dockerfile` to define the Python environment for code execution. The default image name is `code-evaluator:latest`.
- Updated `config/settings.py` with new configuration options:
    - `DOCKER_IMAGE_NAME`: Specifies the Docker image to use for evaluation.
    - `DOCKER_NETWORK_DISABLED`: Controls network isolation for the containers.
- I added comprehensive unit tests in `tests/test_evaluator_agent.py` to cover various Docker execution scenarios, including success, script errors, Docker errors, and timeouts.
- Updated `README.md` to reflect the new Docker requirement, including instructions for Docker installation, building the evaluation image, and configuring the Docker settings.

This enhancement significantly improves the security and reliability of the code evaluation process by isolating executed code and managing its dependencies within a containerized environment.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ba45d239918`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.