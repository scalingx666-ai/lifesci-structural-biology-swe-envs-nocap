# Issue

**Title:** Chain-wise iPTM plaintext metrics

## Description

To complete #308 and proposed format therein.

What would be really cool in a major release is to have the ipTM selectable by region; see Dunbrack, R., _"What's wrong with AlphaFold's **ipTM** and how to fix it"_, [_bioRxiv_](https://doi.org/10.1101/2025.02.10.637595), Feb **2025**. (Truncated the Latin that speaks for itself)

This would be aided by interactive selection from #341 if can we hack the the display viewer to talk to the PAE distribution bins (not the plaintext in #350) so that scientists can select relevant interfaces 'on-the-fly' to see ipTM scores.

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
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [ ] **N/A** Usage docs will be update all out once, program wise, in #354.
 Output Documentation in `docs/output.md` is updated.   
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eb0d081775aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.