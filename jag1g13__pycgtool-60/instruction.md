# Issue

**Title:** uv follow-ups: Python 3.11 floor, dependency cooldown, prek hooks

## Description

:

- Raise minimum Python to 3.11 and refresh lockfile
- Add 7-day dependency cooldown (`exclude-newer`)
- Run ruff, pytest and the coverage gate via `prek` in CI and pre-commit
- Remove `poetry.lock`, add `AGENTS.md`, update README to the uv workflow

Assisted-by: opencode qwen3.8-flash-next

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd65cffdfad3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.