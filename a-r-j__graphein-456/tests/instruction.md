# Issue

**Title:** Fix molecule README example and file-derived names

## Description

#### Reference Issues/PRs
No linked issue; both fixes were found during fresh repository review.

#### What does this implement/fix? Explain your changes
- Correct the README molecule example to initialize `MoleculeGraphConfig` and call the imported `construct_graph` function.
- Derive file-backed graph names with `Path(path).stem`, preserving Windows paths and filenames containing multiple periods.
- Add regression tests for the README example and dotted filenames, and record both fixes in the changelog.
- The existing `notebooks/molecule_tutorial.ipynb` already demonstrates the correct configuration and constructor, so it did not need an update.

#### What testing did you do to verify the changes in this PR?
- `python -m pytest -o addopts='' -q tests/molecule/test_graphs.py` — 10 passed on Windows / CPython 3.9.13; this uses local repository fixtures and inline synthetic SMILES only. The local test harness stubs the unused `bioservices` import and raises if its client is instantiated; no external dataset or live service was accessed. Pytest reported 15 dependency deprecation warnings.
- `black --check graphein/molecule/graphs.py tests/molecule/test_graphs.py` — passed.
- `isort --check-only graphein/molecule/graphs.py tests/molecule/test_graphs.py` — passed.
- `git diff --check` — passed.

#### Pull Request Checklist
- [x] Added a note about the changes to `CHANGELOG.md`.
- [x] Added appropriate unit tests in `tests/molecule/test_graphs.py`.
- [x] The corresponding molecule tutorial notebook already uses the correct API; no notebook edit was needed.
- [x] Ran the specific molecule graph test file; all 10 tests passed.
- [x] Checked formatting for the modified Python files with `black --check` and `isort --check-only`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8e82c8a323a2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.