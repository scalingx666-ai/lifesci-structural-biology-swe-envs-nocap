# Issue

**Title:** Fix invalid code-style workflow YAML and check-yaml custom tag failure

## Description

Fixes the two pre-commit.ci failures on #460.

- **`.github/workflows/code-style.yaml`**: the unquoted `run: python -m pip install --only-binary :all: ruff==… ` is invalid YAML (`: ` inside `:all: ` starts a mapping), so GitHub can't parse the workflow and the code-style job never runs. The command is now quoted; it parses to the same string.
- **`.pre-commit-config.yaml`**: `check-yaml` now gets `--unsafe`, so it checks syntax only and accepts the custom `!ProteinGraphConfig` tag in `tests/utils/test_protein_graph_config.yml`. This failure also exists on master and will be fixed there when #460 merges.

`pre-commit run check-yaml --all-files` passes locally.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `11ae83fae22c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.