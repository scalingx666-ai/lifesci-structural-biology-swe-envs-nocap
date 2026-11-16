# Issue

**Title:** Release v0.1.0

## Description

## Summary

Prepare for initial PyPI release v0.1.0.

### Changes

- Add `CHANGELOG.md` documenting initial release features
- Update installation instructions to use PyPI (`pip install aimnet`)
- Update model tables with correct elements from model metadata
- Add CPCM model to documentation

### Pre-release Checklist

- [x] Set up PyPI API token
- [x] Add `PYPI_TOKEN` to GitHub repository secrets
- [ ] Merge this PR
- [ ] Create git tag `v0.1.0`
- [ ] Create GitHub Release to trigger automated publish

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7d9d0f83b4a6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.