# Issue

**Title:** Add offset to seed per each sampling_factor replica

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Added offset to the seed (if seed is not Nan - otherwise random seed will be assigned later) for refinement job input. if sampling_factor set to 2, cns will get 2 identical staring models with seeds 918 and 919, so the resulting refined models with the same starting point will be different. 

## How was this tested?
Edited examples/docking-antibody-antigen/docking-antibody-antigen-CDR-NMR-CSP-test.cfg to [topoaa]->[rididbody]->[emref] with rididbody sampling = 2 and emref sampling_factor = 2. On main branch emref_1.pdb and emref_2.pdb are identical, on this branch - not anymore. (better description is the isse #1685 )

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. —>

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

## Notes for reviewers
Copied this offset implementation from cgtoaa.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cca52b0c44ce`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.