# Issue

**Title:** Make PyMOL an optional dependency

## Description

At the moment we cannot run the following command without pymol:   
```
$ plip -i 4HVD -x
Traceback (most recent call last):
  File "./plipcmd", line 12, in <module>
    from modules.preparation import *
  File "/home/xrobin/src/plip/modules/preparation.py", line 13, in <module>
    from .detection import *
  File "/home/xrobin/src/plip/modules/detection.py", line 12, in <module>
    from .supplemental import *
  File "/home/xrobin/src/plip/modules/supplemental.py", line 30, in <module>
    from pymol import cmd
ImportError: No module named pymol
```
However PyMOL is required for visualization only, and isn't required to generate the XML report for instance. This is a problem on our cluster as PyMOL is quite difficult to install with all its dependencies, and the sysadmins aren't keen to deploy it on all the nodes of the cluster.

This pull request makes the PyMOL dependency optional by re-organizing the imports, so that `import pymol` is triggered only when required (ie. with `--pymol` and `--pics`). The above command now runs also without pymol.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91802039d5c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.