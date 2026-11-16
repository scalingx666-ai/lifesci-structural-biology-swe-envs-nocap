# Issue

**Title:** build(deps): bump docker/build-push-action from 6 to 7

## Description

Bumps [docker/build-push-action](https://github.com/docker/build-push-action) from 6 to 7.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/docker/build-push-action/releases">docker/build-push-action's releases</a>.</em></p>
<blockquote>
<h2>v7.0.0</h2>
<ul>
<li>Node 24 as default runtime (requires <a href="https://github.com/actions/runner/releases/tag/v2.327.1">Actions Runner v2.327.1</a> or later) by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1470</a></li>
<li>Remove deprecated <code>DOCKER_BUILD_NO_SUMMARY</code> and <code>DOCKER_BUILD_EXPORT_RETENTION_DAYS</code> envs by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1473</a></li>
<li>Remove legacy export-build tool support for build summary by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1474</a></li>
<li>Switch to ESM and update config/test wiring by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1466</a></li>
<li>Bump <code>@​actions/core</code> from 1.11.1 to 3.0.0 in <a href="">docker/build-push-action#1454</a></li>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.62.1 to 0.79.0 in <a href="">docker/build-push-action#1453</a> <a href="">docker/build-push-action#1472</a> <a href="">docker/build-push-action#1479</a></li>
<li>Bump minimatch from 3.1.2 to 3.1.5 in <a href="">docker/build-push-action#1463</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.19.2...v7.0.0">https://github.com/docker/build-push-action/compare/v6.19.2...v7.0.0</a></p>
<h2>v6.19.2</h2>
<ul>
<li>Preserve port in <code>GIT_AUTH_TOKEN</code> host by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1458</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.19.1...v6.19.2">https://github.com/docker/build-push-action/compare/v6.19.1...v6.19.2</a></p>
<h2>v6.19.1</h2>
<ul>
<li>Derive <code>GIT_AUTH_TOKEN</code> host from GitHub server URL by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1456</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.19.0...v6.19.1">https://github.com/docker/build-push-action/compare/v6.19.0...v6.19.1</a></p>
<h2>v6.19.0</h2>
<ul>
<li>Scope default git auth token to <code>github.com</code> by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1451</a></li>
<li>Bump brace-expansion from 1.1.11 to 1.1.12 in <a href="">docker/build-push-action#1396</a></li>
<li>Bump form-data from 2.5.1 to 2.5.5 in <a href="">docker/build-push-action#1391</a></li>
<li>Bump js-yaml from 3.14.1 to 3.14.2 in <a href="">docker/build-push-action#1429</a></li>
<li>Bump lodash from 4.17.21 to 4.17.23 in <a href="">docker/build-push-action#1446</a></li>
<li>Bump tmp from 0.2.3 to 0.2.4 in <a href="">docker/build-push-action#1398</a></li>
<li>Bump undici from 5.28.4 to 5.29.0 in <a href="">docker/build-push-action#1397</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.18.0...v6.19.0">https://github.com/docker/build-push-action/compare/v6.18.0...v6.19.0</a></p>
<h2>v6.18.0</h2>
<ul>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.61.0 to 0.62.1 in <a href="">docker/build-push-action#1381</a></li>
</ul>
<blockquote>
<p>[!NOTE]
<a href="https://docs.docker.com/build/ci/github-actions/build-summary/">Build summary</a> is now supported with <a href="https://docs.docker.com/build-cloud/">Docker Build Cloud</a>.</p>
</blockquote>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.17.0...v6.18.0">https://github.com/docker/build-push-action/compare/v6.17.0...v6.18.0</a></p>
<h2>v6.17.0</h2>
<ul>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.59.0 to 0.61.0 by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1364</a></li>
</ul>
<blockquote>
<p>[!NOTE]
Build record is now exported using the <a href="https://docs.docker.com/reference/cli/docker/buildx/history/export/"><code>buildx history export</code></a> command instead of the legacy export-build tool.</p>
</blockquote>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/build-push-action/compare/v6.16.0...v6.17.0">https://github.com/docker/build-push-action/compare/v6.16.0...v6.17.0</a></p>
<h2>v6.16.0</h2>
<ul>
<li>Handle no default attestations env var by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/build-push-action#1343</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d08e5c3</code></a> Merge pull request <a href="">#1479</a> from docker/dependabot/npm_and_yarn/docker/actions-t...</li>
<li><a href=""><code>cbd2dff</code></a> chore: update generated content</li>
<li><a href=""><code>f76f51f</code></a> chore(deps): Bump <code>@​docker/actions-toolkit</code> from 0.78.0 to 0.79.0</li>
<li><a href=""><code>7d03e66</code></a> Merge pull request <a href="">#1473</a> from crazy-max/rm-deprecated-envs</li>
<li><a href=""><code>98f853d</code></a> chore: update generated content</li>
<li><a href=""><code>cadccf6</code></a> remove deprecated envs</li>
<li><a href=""><code>03fe877</code></a> Merge pull request <a href="">#1478</a> from docker/dependabot/github_actions/docker/setup-b...</li>
<li><a href=""><code>827e366</code></a> chore(deps): Bump docker/setup-buildx-action from 3 to 4</li>
<li><a href=""><code>e25db87</code></a> Merge pull request <a href="">#1474</a> from crazy-max/rm-export-build-tool</li>
<li><a href=""><code>1ac2573</code></a> Merge pull request <a href="">#1470</a> from crazy-max/node24</li>
<li>Additional commits viewable in <a href="https://github.com/docker/build-push-action/compare/v6...v7">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=docker/build-push-action&package-manager=github_actions&previous-version=6&new-version=7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1eda9383c275`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.