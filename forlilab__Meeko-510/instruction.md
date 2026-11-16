# Issue

**Title:** fix: wrong format key in index map mismatch error

## Description

## Description

In `RDKitMolCreate.add_pose_to_mol` (`meeko/rdkit_mol_create.py`), the error raised when the index map has more pairs than the molecule has atoms uses the placeholder `{n_atoms}`, but the value is passed to `.format()` as `n_coords=n_atoms`:

```python
"Number of atom is rdmol {n_atoms} mismatches"
"number of pairs in index map {n_at}!".format(
    n_coords=n_atoms, n_at=n_mappings))
```

So instead of the intended `RuntimeError`, building the message raises `KeyError: 'n_atoms'`, which hides the real problem from the user. The fix renames the keyword to `n_atoms` so the placeholder is filled.

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

- [x] Written a description of the feature or bug fix above.
- [ ] Ran pytest locally and all tests have passed. (Not run: I only did static checks, see below.)
- [ ] If applicable, documentation was updated with new feature. (N/A)
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. (N/A)
- [ ] (Optional) new test added to account for new feature.

## Additional Information

How checked: `ruff check --select F522,F524` is clean on the file afterwards and `python -m py_compile` passes; I read the surrounding code. I did not run the test suite.

*I used Claude (an AI assistant) to help with this change; I reviewed it and ran the check(s) above.*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1718c20e5af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.