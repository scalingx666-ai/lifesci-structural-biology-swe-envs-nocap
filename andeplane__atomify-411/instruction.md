# Issue

**Title:** fix: run console collapsed by default

## Description

The console strip stole ~190px of viewport height on every run screen. It now defaults to collapsed; expanding it is still remembered for the session (same sessionStorage key, inverted default).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b56d248ab9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.