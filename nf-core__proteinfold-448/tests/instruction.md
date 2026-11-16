# Issue

**Title:** Update contributors list in manifest

## Description

This PR updates the contributors section in the `nextflow.config` manifest to better reflect everyone who has contributed to the pipeline.

For reference, the different nf-core contribution types are described [here](https://nf-co.re/docs/contributing/pipelines/contribution_types).

Added @luisas and @l-mansouri as authors and contributors (originally involved in pipeline development)
Added @jscgh, @keiran-rowell-unsw, @abotlp, and @tlitfin as maintainers and contributors.
Added @ziadbkh, @nbtm-sh, and @vagkaratzas as contributors

All the people mentioned above, please review your entry and confirm or update your data there. Also, if you want to be removed or if you think someone else should be there, please let me know. 

**If you are OK with your data, then just approve the PR**

Thanks!



## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ba0bef8c3bba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.