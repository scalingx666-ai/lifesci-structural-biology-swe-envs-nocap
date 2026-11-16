# Issue

**Title:** add versioneer

## Description

Replace homegrown versioning info with dedicated versioneer package [1].
When running in the git repository, versioneer reads the correct version
information from the set of git tags present

Example: Last git tag is v0.2.2 ; there is one extra commit starting with `aa00e90`

```
$ lammps-interface --version
lammps_interface version 0.2.2+6.gaa00e90
```


[1] https://github.com/python-versioneer/python-versioneer

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80d1001ba193`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.