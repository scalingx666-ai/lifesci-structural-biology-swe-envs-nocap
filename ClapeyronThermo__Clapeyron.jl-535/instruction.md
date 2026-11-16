# Issue

**Title:** Update Antoine equation

## Description

- revision of Antoine equation to a more common type:
  - now (also in the docs): 
$$\log_{10} \left( p / {\rm Pa} \right) = A + \frac{B}{T/K - 273.15 + C}$$
  - before (not documented): 
$$\log_{10} \left( p / {\rm Torr} \right) = A + \frac{B}{T/K - 273.15 + C}$$
- added 250+ parameter sets from Poling

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `025438b49a89`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.