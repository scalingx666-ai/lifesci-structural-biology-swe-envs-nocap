# Issue

**Title:** Require cpdb-protein>=0.3.1

## Description

Replaces the exact `cpdb-protein==0.3.0` pin with `>=0.3.1` and refreshes `uv.lock` (only cpdb-protein changes: 0.3.0 → 0.3.1).

Checked locally: `uv lock --check` passes, cpdb 0.3.1 installs and parses `4hhb.pdb`, and `tests/protein/test_graphs.py` gives 13 passed, 5 skipped.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c17e7d69929c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.