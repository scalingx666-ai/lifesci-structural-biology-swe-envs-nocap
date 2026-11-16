# Issue

**Title:** Pin GitHub Actions to full-length commit SHAs

## Description

## Summary

This PR pins GitHub Actions to full-length commit SHAs for improved security and reproducibility and adds a 7 day cooldown to Dependabot configuration for GitHub Actions. This work is described in more detail at https://aka.ms/action-pinning.

## Why?

Pinning actions to commit SHAs prevents supply-chain attacks where a tag could be moved to point to malicious code. This is a recommended security best practice per the [GitHub Actions security hardening guide](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions#using-third-party-actions).

This change mitigates the risk of tag retargeting to malicious code as seen in incidents like the [tj-actions/changed-files action compromise](https://www.stepsecurity.io/blog/harden-runner-detection-tj-actions-changed-files-action-is-compromised) or [codfish/semantic-release-action compromise](https://www.stepsecurity.io/blog/supply-chain-compromise-codfish-semantic-release-action) and improves the integrity and reproducibility of the CI/CD pipeline.

## What changed?

**Action pinning:** Third-party action references in `.github/workflows/` that used mutable tag-based references (e.g., `actions/checkout@v4`) have been updated to full-length commit SHAs with a version comment (e.g., `actions/checkout@<sha> # v4`) using the [pinact](https://github.com/suzuki-shunsuke/pinact) tool. References that were already pinned to a SHA, or that used immutable release tags, were left unchanged.

**Dependabot configuration:** `.github/dependabot.yml` has been updated to ensure a `github-actions` package-ecosystem section is present with a `cooldown` configuration (`default-days: 7`). If the file did not exist, it was created. If a `github-actions` section already existed, only the `cooldown` block was added or its `default-days` value was increased to 7 if it was lower. The 7-day cooldown provides a window for the community to detect and report compromised releases before they are automatically proposed as updates, reducing exposure to supply-chain attacks via newly published malicious versions.

## Is this safe to merge?

Yes. The pinned SHAs correspond to the same commits that the existing tags pointed to. No behavioral changes in action execution are introduced. You can verify the pinned SHA value using the GitHub REST API (e.g., the commit hash for `actions/checkout@v7` can be found in the `sha` property in the JSON response for `GET https://api.github.com/repos/actions/checkout/commits/v7`).

## Additional Information

For more information, please see https://aka.ms/action-pinning

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `18c865338db9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.