# Issue

**Title:** Add ruff-based linting, mypy type checking, pytest testing infrastructure, tox automation, and GitHub CI

## Description

Adds linting, formatting, and testing infrastructure modeled after metatensor/metatrain.

## Configuration Added

- **ruff**: Linting (E, F, B, I rules) and formatting with isort integration
- **mypy**: Type checking with `ignore_missing_imports` enabled and `union-attr` errors disabled
- **pytest**: Test framework with warning filters for known UserWarnings
- **tox**: Automation tool for running lint, format, and test environments
- **GitHub CI**: Automated workflows for linting and testing

## Test Coverage

Created `tests/test_models.py` with basic validation:
- Constants (`AVAILABLE_MLIPS`, `AVAILABLE_TIME_STEPS`)
- Error handling for invalid MLIP names and time steps

Created `tests/test_readme.py` with README example validation:
- Automatically extracts the first Python code block from README.md
- Runs the ASE usage example with 10 steps instead of 1000
- Validates that the dynamics object is created successfully
- Gracefully skips if models can't be downloaded (e.g., no network access)
- Marked with `@pytest.mark.slow` for optional exclusion

## Code Formatting

Applied ruff formatting to existing codebase:
- Import sorting (stdlib → third-party → local)
- Consistent style throughout

## Tox Environments

Created `tox.ini` with three environments:
- **lint**: Runs ruff formatting checks, ruff linting, and mypy type checking
- **format**: Auto-formats code with ruff
- **tests**: Runs pytest

## GitHub CI Workflows

- **`.github/workflows/lint.yml`**: Runs linting checks on all pull requests
- **`.github/workflows/tests.yml`**: Runs tests on push/PR with multiple Python versions (3.10, 3.13) and operating systems (Ubuntu 22.04, macOS 14)

## Usage

```bash
# Install dev dependencies
pip install -e ".[dev]"

# Manual commands
ruff check src/ tests/
ruff format src/ tests/
pytest tests/
mypy src/flashmd/

# Using tox (recommended)
tox              # Run all environments
tox -e lint      # Run linting only
tox -e format    # Auto-format code
tox -e tests     # Run tests

# Run tests excluding slow tests
pytest -m "not slow"
```

Note: E501 (line-too-long) is ignored to minimize changes to existing code.

<!-- START COPILOT ORIGINAL PROMPT -->

<details>

<summary>Original prompt</summary>

>
> ----
>
> *This section details on the original issue you should resolve*
>
> <issue_title>Linting and tests</issue_title>
> <issue_description>We should update the repo with linting checks and tests</issue_description>
>
> <agent_instructions>You can take inspiration from the structure in https://github.com/metatensor/metatrain.
> We would like to have linting and formatting ruff-based as well as mypy. For the tests, you can just create a dummy test</agent_instructions>
>
> ## Comments on the Issue (you are @copilot in this section)
>
> <comments>
> </comments>
>

</details>

<!-- START COPILOT CODING AGENT SUFFIX -->

- Fixes lab-cosmo/flashmd#22

<!-- START COPILOT CODING AGENT TIPS -->
---

💡 You can make Copilot smarter by setting up custom instructions, customizing its development environment and configuring Model Context Protocol (MCP) servers. Learn more [Copilot coding agent tips](https://gh.io/copilot-coding-agent-tips) in the docs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c4d632818916`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.