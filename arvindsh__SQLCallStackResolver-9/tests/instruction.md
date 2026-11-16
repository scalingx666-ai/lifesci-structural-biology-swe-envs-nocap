# Issue

**Title:** Improve performance of symbol resolution + code cleanup

## Description

* Cache RVA -> symbol lookups where possible
* Use dedicated threads for ensuring DIA objects are reused across calls
* Moved supporting classes into their own files
* Ensure Dispose() pattern is implemented and used correctly
* Optionally cache PDBs in %TEMP%\SymCache (useful when using UNC paths)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ebfbda52e3e2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.