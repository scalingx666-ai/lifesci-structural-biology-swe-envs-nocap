# Issue

**Title:** py3Dmol: Makes IPython an optional depend

## Description

This change makes IPython an optional dependency for the reasons stated in #418. This is more the exacting of options requiring a `pip install py3Dmol[ipython]` to pull down IPython as well. Optionally, I can revert the `setup.py` code to include `IPython` again, leave the exception handling in, and make a new `py3dmol-core` Conda-forge package without the IPython dependency which would satisfy our requirements as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c9679b3b6d3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.