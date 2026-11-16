# Issue

**Title:** Remove the "importing Biopython from inside the source tree" warning

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

.

### What this does

Removes the "You may be importing Biopython from inside the source tree."
`BiopythonWarning` that was emitted at import time, together with the now
unused `import os` / `import warnings` and the `_parent_dir` detection block.
All exception classes (`BiopythonWarning`, `BiopythonExperimentalWarning`,
`BiopythonParserWarning`, `BiopythonDeprecationWarning`, ...) are unchanged.

### Why the warning fires

The check decided "am I running from the source tree?" by testing for a
`pyproject.toml` next to the `Bio` package directory, and then confirming
development mode by looking for a `biopython.egg-link` in `site-packages`.

That second step no longer matches reality: modern `pip install -e .`
(PEP 660) writes an `__editable__.biopython-*.pth` file plus an
`__editable___biopython_*_finder.py`, and no `biopython.egg-link`. Therefore
`_dev_mode` is always `False`, and any `pyproject.toml` sitting one level above
the importable `Bio` package triggers the warning on *every* import - whether
or not the user is actually inside the source tree.

### Reproduction

```python
# no editable install involved, just a pyproject.toml next to the package:
#   tmp/Bio/__init__.py  +  tmp/pyproject.toml  on sys.path
PYTHONPATH=tmp python -c "import Bio"
# Bio/__init__.py:138: BiopythonWarning: You may be importing Biopython
# from inside the source tree. ... you have a pyproject.toml file in an
# unexpected directory: tmp
```

With this change the same command prints nothing.

### Testing

Full local suite on Windows / CPython 3.12.15:

```
Ran 515 tests in 87.899 seconds
```

0 failures, 0 errors (61 modules skipped: optional dependencies such as
`reportlab` and `PAML`, BioSQL without a `biosql.ini`, and online tests via
`--offline`). `Bio.codonalign` still raises its own
`BiopythonExperimentalWarning` as before.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c6f13572481`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.