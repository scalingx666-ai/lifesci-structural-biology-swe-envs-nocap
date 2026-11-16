# Issue

**Title:** Add random_seed for AF2, Boltz and ColabFold

## Description

This pull request adds support for explicit random seed control across the `alphafold2`, `boltz`, and `colabfold` modules, improving reproducibility for stochastic inference. Users can now set a global `--random_seed` parameter, or override it with mode-specific parameters. Documentation and schema files have been updated to reflect these new options.

* Added a pipeline-wide `random_seed` parameter to `nextflow.config` and `nextflow_schema.json`, allowing users to set a global seed for all supported modules. Each module now uses its mode-specific seed if provided, otherwise falls back to the global seed (`random_seed`).
* Removes `alphafold2_random_seed` in favour of the global version.
* Validates input parameters and warns when `random_seed` is set while running unsupported mode(s).
* Attempts to fix the looping nf-core-bot workflow_json runner.

<!--
# nf-core/proteinfold pull request

Many thanks for contributing to nf-core/proteinfold!

Please fill in the appropriate checklist below (delete whatever is not relevant).
These are the most common things requested on pull requests (PRs).

Remember that PRs should be made against the dev branch, unless you're preparing a pipeline release.

Learn more about contributing: [CONTRIBUTING.md](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
-->

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Usage Documentation in `docs/usage.md` is updated.
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `24272b4a22d5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.