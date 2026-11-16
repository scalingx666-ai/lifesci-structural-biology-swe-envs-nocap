# Issue

**Title:** Ranking passed templates by H_excess if tied with H_missing

## Description

This is a quick fix for #300. Passed current tests (in develop) and works for the triply protonated N-terminal residues. It implements the additional refinement of passed templates (previously forgiven with excess H) for minimal excess H. 

My previous PR #211 caused the unexpected behavior. This is an amend to handle explicitly protonated linking atoms in the corect way. 

@diogomart Would this be ok as a temporary fix? Sorry for implementing the bug ><

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5e38dc909e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.