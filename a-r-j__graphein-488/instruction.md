# Issue

**Title:** Use ConfigDict instead of deprecated class-based Config in GRN/PPI configs

## Description

Fixes the `PydanticDeprecatedSince20` warning raised at `graphein/grn/config.py:45`:

> Support for class-based `config` is deprecated, use ConfigDict instead.

- `GRNGraphConfig` and `PPIGraphConfig` (same pattern) now use `model_config = ConfigDict(arbitrary_types_allowed=True)`.
- Verified both modules import and instantiate under `python -W error` with pydantic v2.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7242ee211435`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.