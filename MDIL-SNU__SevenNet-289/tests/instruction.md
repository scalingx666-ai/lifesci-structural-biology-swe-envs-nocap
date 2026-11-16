# Issue

**Title:** Remove StateDict from TS API

## Description

We recently got TS type checked using ty. This exposed that the StateDict which was maintained as a legacy from earlier development was harder to maintain. We have decided to remove it from the ModelInterface. This PR drops the StateDict

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9ab33342b77`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.