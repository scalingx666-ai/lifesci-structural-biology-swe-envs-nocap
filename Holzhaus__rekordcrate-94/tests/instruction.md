# Issue

**Title:** Column table

## Description

~~based on #93 atm~~

most fields have not been reverse-engineered. I just whipped this up while I'm waiting for my windows VM to download so I can create more databases to analyze. From all the databases I've collected so far, the tables were identical, they seem to just contain the defaults I guess.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e10575d8950`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.