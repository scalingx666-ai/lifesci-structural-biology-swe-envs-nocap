# Issue

**Title:** Drop libopenmpi3 from CI apt installs (Ubuntu 26.04)

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Removes `libopenmpi3` from the `apt-get install` lines in `ci.yml` (2x) and `pages.yml`. `ubuntu-latest` is now Ubuntu 26.04, which no longer ships that package, so CI and docs deployment fail. `libopenmpi-dev` pulls in the runtime library, as in our `Dockerfile`.

## How was this tested?
By the CI run of this PR (Linux jobs install OpenMPI and run the MPI tests).

## AI assistance
Diagnosis and change made with Claude Code; verified against the failing CI logs.

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers
CI-only change, not user-facing.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `14423df6565c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.