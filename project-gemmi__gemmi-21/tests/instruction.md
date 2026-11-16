# Issue

**Title:** Installation of pybind11 in setup.py

## Description

The `setup.py` included with gemmi requires the user to pre-install pybind11 if it is missing, or does not meet the minimum version requirement. This pull request updates the `setup.py` to automatically install pybind11 if it is missing from the environment prior to installing gemmi. 

The updates made to the `setup.py` file are based on this [example](https://github.com/pybind/python_example/blob/master/setup.py). The important change is to include a `setup_requires` argument in the main `setup()` call. I have also updated the `get_pybind_include` object to match the example. 

The final changes made in this pull request are to the CI .yml scripts for appveyor / TravisCI. I removed the manual `pip install pybind11` calls so that it will be possible to see the effects of these changes. 

I look forward to your thoughts!

Best,
Jack

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `29cb706a9878`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.