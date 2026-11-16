# Issue

**Title:** Update AI-POLICY.md

## Description

- AI output on scientific work (scoring, energy terms, restraints, CNS/topology parameters) is allowed if it has been carefully inspected by hand
- PR reviews, descriptions and responses may be written by AI, but the author must review them
- Ask for short, to-the-point PR descriptions following the PR template

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0903985a20d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.