# Issue

**Title:** Enhance MM/PBSA workflow by adding MMPBSA calculation functionality a…

## Description

…nd improving configuration management. Update .gitignore to exclude additional output directories. Refactor quickrun.py to integrate MMPBSA steps, and enhance logging in various modules. Clean up deprecated mmpbsa.py file and adjust paths in config.py for better organization of output files.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `72179fe5d554`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.