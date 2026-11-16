# Issue

**Title:** Adding SerpGitTool

## Description

Search github issues in openmm directly. Uses SERPAPI to find relevant issues and then github-api to retrieve such issues. 

If output exceeds 4000 tokens, a summary of the findings is output from the tool. 

Example notebook also added.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dbc495ba5060`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.