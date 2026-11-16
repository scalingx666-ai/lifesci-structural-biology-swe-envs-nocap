# Issue

**Title:** Remove unused code

## Description

_**Attention:** This is rigorous cleanup! I removed code which appears to be broken, unused or unreachable within the code base. I cannot rule out that anything of that is used from external code, although I believe that it's very unlikely._

* Remove all code which was previously marked with `NotImplementedError("unused")`
* Remove unsued command line arguments
* Remove unused arguments, replace mutable defaults
  * Closes 
  * Closes

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6ee0df8e6d13`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.