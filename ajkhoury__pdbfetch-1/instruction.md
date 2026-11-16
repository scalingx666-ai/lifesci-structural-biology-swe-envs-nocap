# Issue

**Title:** Simplify directory normalization, cache same as windbg

## Description

* Removes manual path concatenation and folder normalization and uses std golang routines instead. This nicely shows the preview path with the correct slash in the console output.
* Changes download folder to not put a slash before the age, and to capitalize the GUID+AGE to mimic how windbg (symsrv) caches the pdb files. 

Ex output paths (windows):
```
Before: /kernel32.pdb/dbe09e71b3709cb722c55e5573fa7be1/1/kernel32.pdb
After: \kernel32.pdb\DBE09E71B3709CB722C55E5573FA7BE11\kernel32.pdb
```

My windbg symbol cache:
![image](https://user-images.githubusercontent.com/6619205/147714199-67bdc480-f2ef-4a35-85e4-432031cd31b3.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7aebb9d7bac7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.