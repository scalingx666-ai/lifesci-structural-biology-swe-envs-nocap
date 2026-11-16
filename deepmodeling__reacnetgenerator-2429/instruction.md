# Issue

**Title:** build(deps): bump docker/metadata-action from 5 to 6

## Description

Bumps [docker/metadata-action](https://github.com/docker/metadata-action) from 5 to 6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/docker/metadata-action/releases">docker/metadata-action's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0</h2>
<ul>
<li>Node 24 as default runtime (requires <a href="https://github.com/actions/runner/releases/tag/v2.327.1">Actions Runner v2.327.1</a> or later) by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#605</a></li>
<li>List inputs now preserve <code>#</code> inside values while still supporting full-line <code>#</code> comments by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#607</a></li>
<li>Switch to ESM and update config/test wiring by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#602</a></li>
<li>Bump lodash from 4.17.21 to 4.17.23 in <a href="">docker/metadata-action#588</a></li>
<li>Bump <code>@​actions/core</code> from 1.11.1 to 3.0.0 in <a href="">docker/metadata-action#599</a></li>
<li>Bump <code>@​actions/github</code> from 6.0.1 to 9.0.0 in <a href="">docker/metadata-action#597</a></li>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.68.0 to 0.79.0 in <a href="">docker/metadata-action#604</a></li>
<li>Bump <code>@​isaacs/brace-expansion</code> from 5.0.0 to 5.0.1 in <a href="">docker/metadata-action#600</a></li>
<li>Bump semver from 7.7.3 to 7.7.4 in <a href="">docker/metadata-action#603</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/metadata-action/compare/v5.10.0...v6.0.0">https://github.com/docker/metadata-action/compare/v5.10.0...v6.0.0</a></p>
<h2>v5.10.0</h2>
<ul>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.66.0 to 0.68.0 in <a href="">docker/metadata-action#559</a> <a href="">docker/metadata-action#569</a></li>
<li>Bump js-yaml from 3.14.1 to 3.14.2 in <a href="">docker/metadata-action#564</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/metadata-action/compare/v5.9.0...v5.10.0">https://github.com/docker/metadata-action/compare/v5.9.0...v5.10.0</a></p>
<h2>v5.9.0</h2>
<ul>
<li>Add <code>tag-names</code> output to return tag names without image base name by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#553</a></li>
<li>Bump <code>@​babel/runtime-corejs3</code> from 7.14.7 to 7.28.2 in <a href="">docker/metadata-action#539</a></li>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.62.1 to 0.66.0 in <a href="">docker/metadata-action#555</a></li>
<li>Bump brace-expansion from 1.1.11 to 1.1.12 in <a href="">docker/metadata-action#540</a></li>
<li>Bump csv-parse from 5.6.0 to 6.1.0 in <a href="">docker/metadata-action#532</a></li>
<li>Bump semver from 7.7.2 to 7.7.3 in in <a href="">docker/metadata-action#554</a></li>
<li>Bump tmp from 0.2.3 to 0.2.5 in <a href="">docker/metadata-action#541</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/metadata-action/compare/v5.8.0...v5.9.0">https://github.com/docker/metadata-action/compare/v5.8.0...v5.9.0</a></p>
<h2>v5.8.0</h2>
<ul>
<li>New <code>is_not_default_branch</code> global expression by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#535</a></li>
<li>Allow to match part of the git tag or value for semver/pep440 types by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#536</a> <a href="">docker/metadata-action#537</a></li>
<li>Bump <code>@​actions/github</code> from 6.0.0 to 6.0.1 in <a href="">docker/metadata-action#523</a></li>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.56.0 to 0.62.1 in <a href="">docker/metadata-action#526</a></li>
<li>Bump form-data from 2.5.1 to 2.5.5 in <a href="">docker/metadata-action#533</a></li>
<li>Bump moment-timezone from 0.5.47 to 0.6.0 in <a href="">docker/metadata-action#525</a></li>
<li>Bump semver from 7.7.1 to 7.7.2 in <a href="">docker/metadata-action#524</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/metadata-action/compare/v5.7.0...v5.8.0">https://github.com/docker/metadata-action/compare/v5.7.0...v5.8.0</a></p>
<h2>v5.7.0</h2>
<ul>
<li>Global expressions support for labels and annotations by <a href="https://github.com/crazy-max"><code>@​crazy-max</code></a> in <a href="">docker/metadata-action#489</a></li>
<li>Support disabling outputs as environment variables by <a href="https://github.com/omus"><code>@​omus</code></a> in <a href="">docker/metadata-action#497</a></li>
<li>Bump <code>@​docker/actions-toolkit</code> from 0.44.0 to 0.56.0 in <a href="">docker/metadata-action#507</a> <a href="">docker/metadata-action#509</a></li>
<li>Bump csv-parse from 5.5.6 to 5.6.0 in <a href="">docker/metadata-action#482</a></li>
<li>Bump moment-timezone from 0.5.46 to 0.5.47 in <a href="">docker/metadata-action#501</a></li>
<li>Bump semver from 7.6.3 to 7.7.1 in <a href="">docker/metadata-action#504</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/docker/metadata-action/compare/v5.6.1...v5.7.0">https://github.com/docker/metadata-action/compare/v5.6.1...v5.7.0</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>030e881</code></a> Merge pull request <a href="">#607</a> from crazy-max/allow-comments</li>
<li><a href=""><code>4b529ac</code></a> chore: update generated content</li>
<li><a href=""><code>b0082b3</code></a> preserve comments in list input values with commentNoInfix</li>
<li><a href=""><code>7b19fec</code></a> Merge pull request <a href="">#604</a> from docker/dependabot/npm_and_yarn/docker/actions-to...</li>
<li><a href=""><code>281c9b0</code></a> chore: update generated content</li>
<li><a href=""><code>5f43b3b</code></a> test: stabilize github mock setup since ESM</li>
<li><a href=""><code>9d53276</code></a> github class moved since actions-toolkit v0.77.0</li>
<li><a href=""><code>eaa3d39</code></a> chore(deps): Bump <code>@​docker/actions-toolkit</code> from 0.68.0 to 0.77.0</li>
<li><a href=""><code>6b695f7</code></a> Merge pull request <a href="">#605</a> from crazy-max/node24</li>
<li><a href=""><code>a1afadc</code></a> node 24 as default runtime</li>
<li>Additional commits viewable in <a href="https://github.com/docker/metadata-action/compare/v5...v6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=docker/metadata-action&package-manager=github_actions&previous-version=5&new-version=6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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