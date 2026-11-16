# Issue

**Title:** Fix CHARMM files parsing and system building

## Description

## Description
CHARMM36 systems are not being built and require box_vector assignments before creating the system with psf.CreateSystem().

## Todos
  - [x] C36 systems are correctly read and built
  - [x] New tag for box vectors in the XML input file
  - [x] Easier solution to read toppar files (and compatible with CHARMM-GUI inputs).

## Status
- [x] Ready to go

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f547b8c56cc9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.