# Issue

**Title:** Update modules_alphafold2.config

## Description

## Description of Changes

**Wrap GPU configuration in closures to fix parameter evaluation order in AlphaFold2**

Apply the same GPU configuration fix to AlphaFold2 that was previously applied to Boltz in commit . 

Wrap `ext.args` configuration blocks in closures to ensure GPU-related arguments are resolved correctly from the config file at runtime, rather than at config parsing time. 

### Changes made

- Modified `conf/modules_alphafold2.config`
  - Wrapped `ext.args` in `RUN_ALPHAFOLD2` process block in a closure (line 87)
  - Wrapped `ext.args` in `RUN_ALPHAFOLD2_PRED` process block in a closure (line 147)
  - Changed from direct evaluation to lazy evaluation: `ext.args = [...]` → `ext.args = { [...] }`

## PR checklist

- [X] This comment contains a description of changes (with reason).
- [ ] If you've fixed a bug or added code that should be tested, add tests!
- [ ] If you've added a new tool - have you followed the pipeline conventions in the [contribution docs](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
- [ ] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [X] Make sure your code lints (`nf-core pipelines lint`).
- [X] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [ ] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [ ] Usage Documentation in `docs/usage.md` is updated.
- [ ] Output Documentation in `docs/output.md` is updated.
- [x] `CHANGELOG.md` is updated.
- [ ] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4a3bfe0a7160`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.