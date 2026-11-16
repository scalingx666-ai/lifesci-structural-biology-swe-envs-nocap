# Issue

**Title:** update paths in `caprieval` analysis report

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [x] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->
In `clt_table_handler` the model paths from `capri_ss.tsv` are relative to NN_caprieval/, but the generated `report.html` lives one level deeper in the directory structure.

Links built directly from the tsv values resolved to a non-existent path, causing 404s when clicking model links in the report. The fix is to prepend an extra `../` to the model column paths so links correctly resolve

Also fixed an existing fixture bug: `example_capri_clt` was pointing at `capri_ss_example.tsv` instead of `capri_clt_example.tsv`.

multi-line list formatting).
## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->
#1568 

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e42aa0aa957c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.