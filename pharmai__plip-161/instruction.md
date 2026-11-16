# Issue

**Title:** Workaround to fix and install openbabel bindings

## Description

Attempt to make `pip install plip` just work.
`pip install plip` fails due to a bug in openbabel python bindings distribution on pypi. [0]
The changes from this PR  will check if openbabel  bindings module is loadable  and if not, will attempt to download, fix and install them during plip build process.

On recent Debian/Ubuntu systems, it is sufficient to install the python3-openbabel package, which will pull all the necessary binary dependencies. If pre-packaged bindings are not present, the requirements are OpenBabel development files, the OpenBabel library, SWIG, and pkg-config, since OpenBabel's setup.py relies on pkg-config and properly installed OpenBabel.

[0]

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7839705a225d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.