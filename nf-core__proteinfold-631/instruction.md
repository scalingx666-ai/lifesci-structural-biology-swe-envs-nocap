# Issue

**Title:** Add cpu module tests for boltz workflow

## Description

Following up from #621, there were many edge cases which could cause errors in the future (eg colabfold_search does not maintain the ordering of entities which can break PTMs and contact constraints if not handled carefully). This PR adds several module tests to avoid breaking edge cases in future development. Tests for the following modules are added.

Very lightweight:
- **boltz_fasta:** convert fasta input to boltz yaml (with tagged or automatic entity type assignment)
- **boltz_yaml_to_colabfold_fasta:** convert boltz yaml format to colabfold fasta
- **split_msa:** convert af3 json format (with msas) to boltz yaml using with entity order and additional metadata derived from original boltz yaml (without msas).

Less lightweight:
- **mmseqs_colabfoldsearch:** construct msa by searching colabfold database. Could make this more lightweight by further trimming uniref30 db. Should add multimer test when upstream bug fixed or mapping available for uniref30 minidb.

**Note:** This is pointing at my test-data fork. Can submit PR to add test data to nf-core after PR is approved.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] If you've fixed a bug or added code that should be tested, add tests!
- [x] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eae9ba4c82aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.