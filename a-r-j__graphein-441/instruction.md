# Issue

**Title:** fix: guard rdkit-dependent constants in atoms.py

## Description

#### Reference Issues/PRs
None found. This is a previously unreported bug.

<!--
Example: . .
Please use keywords (e.g., Fixes) to create link to the issues or pull requests
you resolved, so that they will automatically be closed when your pull request
is merged. See https://github.com/blog/1506-closing-issues-via-pull-requests
-->

#### What does this implement/fix? Explain your changes
graphein/molecule/atoms.py defines module-level constants using Chem.rdchem.* enums (e.g. ALLOWED_HYBRIDIZATIONS, ALL_BOND_TYPES), but the existing try/except block only guards the import rdkit.
Chem statement. When rdkit is not installed, these constants raise NameError, making import graphein.molecule fail entirely.

This contradicts the design intent visible in other molecule submodules (graphs.py, utils.py) where
rdkit is treated as an optional dependency with a flag-based guard pattern.

Fix: Add a _HAS_RDKIT flag to the existing try/except and wrap rdkit-dependent constants in if _HAS_RDKIT: / else: block with empty fallbacks. Pure Python constants (BASE_ATOMS, EXTENDED_ATOMS,
ALLOWED_DEGREES, etc.) are unchanged.

#### What testing did you do to verify the changes in this PR?
- Verified import graphein.molecule and import graphein.molecule.atoms succeed in a Python environment without rdkit installed
- Ran black --check and isort --check-only on the changed file — both pass

#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6ee499e7e563`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.