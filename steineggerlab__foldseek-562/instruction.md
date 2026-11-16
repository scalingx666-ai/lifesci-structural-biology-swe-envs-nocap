# Issue

**Title:** Foldseek-Multimer with less memory

## Description

Foldseek-Multimer with less memory
@sooyoung-cha, please review my changes: line 916-924, 940-941, 951-952, 1283-1284, 1006-1012, 1267-1268.
I fixed one point to avoid a data race and a way to deal with the strings (results to write).
@martin-steinegger and @milot-mirdita, Do I need to change the type of alignmentLinesMap(string to char*, line 1439)?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `24020d257933`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.