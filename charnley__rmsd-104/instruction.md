# Issue

**Title:** Change 'print' by 'return' in main

## Description

Maybe this was unnecessary or there is a better way of doing it, but I use this module inside my scripts to calculate the rmsd between hundreds of pairs of molecules and I need to collected the rmsd values in a matrix.


So I changed the last two `print` in the main function by `return` so the results can be collected and used in those scripts when the main function is called as 'rmsd.main(file1,file2,--options...)' from the module.

e.g.
```
for i in range(n_files):
    for j in range(i+1,n_files):
        results[i,j] = rmsd.main([str(files[i]),str(files[j]),'-e'])
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f47b9b505840`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.