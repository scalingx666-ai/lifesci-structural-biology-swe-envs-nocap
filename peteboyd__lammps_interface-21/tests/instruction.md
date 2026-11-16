# Issue

**Title:** prepare release on PyPI

## Description

This prepares the package for release on PyPI

I've already uploaded it on test.pypi.org for testing.

You can test installing it using
```
pip install --index-url https://test.pypi.org/simple/ lammps-interface
```
This is how the page will look like: https://test.pypi.org/project/lammps-interface/
Note: there will also be a link to your github

After this is merged, I will make the release and publish the package on PyPI.
If you would like me to make you a maintainer of the package there, register for an account on pypi.org and let me know your username.

P.S. In order to keep this knowledge around, I've created a [brief Wiki page on how to make a new release](https://github.com/peteboyd/lammps_interface/wiki/Releasing)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `47181d49e1b2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.