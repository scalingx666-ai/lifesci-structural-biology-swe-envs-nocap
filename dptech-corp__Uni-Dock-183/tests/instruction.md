# Issue

**Title:** ci: pin python=3.12 for openbabel compatibility

## Description

## Summary
- Miniforge 26.x (released Feb 2026) ships Python 3.13 by default, but `openbabel` on conda-forge only has builds up to Python 3.12
- This causes the `install tools` step in Uni-Dock Tools CI/CD to fail for all PRs
- Fix: pin `python=3.12` in the `mamba install` command

## Test plan
- [ ] Verify the `tests` job in Uni-Dock Tools CI/CD passes the `install tools` step

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `47700dffd19c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.