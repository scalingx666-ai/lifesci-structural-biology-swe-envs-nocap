# Issue

**Title:** Introduce cutoff ranges to close_contacts

## Description

This PR make ranges of (2,4] possible with `close_contacts` (previously lower bound always was 0). Additionally it removes name duplicate of descriptor generator.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88bb0a3c2f59`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.