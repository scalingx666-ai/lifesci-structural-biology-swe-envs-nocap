# Issue

**Title:** Migrate to pyproject.toml

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

 
 # Contents for the PR

Replaces `setup.py` packaging configuration with `pyproject.toml`, including everything associated with this change: ci, documentation, etc. (hopefully I didn't miss anything)

# Potential points of discussion

## Running tests

Currently `python setup.py test --offline` produces the following files in the root directory which are not gitignored (am I doing something wrong?):

```
other_trees.nex
other_trees.xml
tree1.nwk
tree1.xml
```

Since I opted for completely deleting `setup.py` the new equivalent way to write tests would be:
```
cd Tests
python run_tests.py
```
However, In my testing I had less errors when running the code bellow compared to above (8 vs 11)?
```
python Tests/run_tests.py
```
Is there a specific reason we need to change directory to the `Tests` folder?


## Keywords

`pyproject.toml` supports project `keywords` in the `project` section. I didn't add any, but I can add them if you propose a list.

## License

As per the [docs](https://packaging.python.org/en/latest/guides/writing-pyproject-toml/#license-and-license-files), since the Biopython license is not a valid [spdx](https://spdx.org/licenses/) license, I can write
```toml
[project]
license = "LicenseRef-Biopython OR BSD-3-Clause"
``` 
I hope this is correct.

## Setuptools

New minimum version is `74.1` since it supports `[[tool.setuptools.ext-modules]]`

Since `setuptools` is required to run tests (because `setuptoosl.find_packages()` is used), I added `setuptools` to the 
`dev` depedency group so they can be installed via `pip install -e . --group dev`. This prevents the `ModuleNotFoundError` for `setuptools` and is more friendly with other package managers such as `uv` 

## RPM Builds

Are now more involved, since its no longer a 1-liner, but as per the [docs](https://packaging.python.org/en/latest/discussions/setup-py-deprecated/#what-commands-should-be-used-instead)
the command `python setup.py bdist_rpm` should not be used anymore. 


Potentially

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f948a55b4caf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.