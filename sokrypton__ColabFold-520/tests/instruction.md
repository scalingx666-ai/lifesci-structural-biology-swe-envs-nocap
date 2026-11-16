# Issue

**Title:** Fixed multimer msa not paired if raw_jobname has white spaces

## Description

Made qdb.lookup to only save first word of raw_jobname(header)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `223e4bfba3aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.