# Issue

**Title:** Use "pip install ." instead of "python setup.py" to install quippy

## Description

`python setup.py` seems to insist on using `easy-install.pth` which appears to be ignored when installing to random paths, even if they are in PYTHONPATH.   Also make `setup.py` version be read from file `VERSION`, created by `quippy/Makefile` "build" target, so pip, which installs from some temporary dir, will have useful version info.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a51ab862b829`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.