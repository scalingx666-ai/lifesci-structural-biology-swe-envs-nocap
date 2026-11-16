# Issue

**Title:** Add PandasPdb.read_pdb_from_list method + unit test

## Description

### Code of Conduct

<!-- 
If this is your first Pull Request for the BioPandas repository, please review
the code of conduct, which is available at http://rasbt.github.io/biopandas/CODE_OF_CONDUCT/. 
-->


### Description

<!--  
Please insert a brief description of the Pull request below.
-->

This PR suggests a class method `PandasPdb.read_pdb_from_list` in order to provide the same API in the `mol2` and `pdb` modules.

```python
pmol = PandasMol2()
pmol.read_mol2()
pmol.read_mol2_from_list()

ppdb = PandasPdb()
ppdb.read_pdb()
ppdb.read_pdb_from_list()  # New feature?
```

### Related issues or pull requests

<!--  
If applicable, please link related issues/pull request below. For example,   
"". Note that the "Fixes" keyword in GitHub will automatically
close the listed issue upon merging this Pull Request.
-->

Proposes code for the suggested feature in #70.

### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at http://rasbt.github.io/biopandas/contributing/.
-->

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable) 
  - _Add note to if this suggestion is considered to be accepted._
  - _Do you mean this files `./docs/CHANGELOG.md`?_
- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable) 
  - _Modify documentation if this suggestion is  considered to be accepted._
  - _Do you mean the Jupyter Notebook in `biopandas/docs/tutorials/` or the Markdown documentation in `biopandas/docs/sources/`?_
- [x] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [x] Checked for style issues by running `flake8 ./biopandas`


<!--NOTE  
Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8da42c22e848`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.