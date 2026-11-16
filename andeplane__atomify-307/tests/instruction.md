# Issue

**Title:** feat: upgrade to React 19

## Description

Supersedes dependabot PRs #277 and #278. Upgrades react, react-dom, @types/react, @types/react-dom to v19, and @testing-library/react to v16 for compatibility. Fixes all breaking changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8bfb8360422d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.