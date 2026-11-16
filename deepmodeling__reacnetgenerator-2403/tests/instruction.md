# Issue

**Title:** build(deps): bump actions/setup-node from 4 to 6

## Description

Bumps [actions/setup-node](https://github.com/actions/setup-node) from 4 to 6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/setup-node/releases">actions/setup-node's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0</h2>
<h2>What's Changed</h2>
<p><strong>Breaking Changes</strong></p>
<ul>
<li>Limit automatic caching to npm, update workflows and documentation by <a href="https://github.com/priyagupta108"><code>@​priyagupta108</code></a> in <a href="">actions/setup-node#1374</a></li>
</ul>
<p><strong>Dependency Upgrades</strong></p>
<ul>
<li>Upgrade ts-jest from 29.1.2 to 29.4.1 and document breaking changes in v5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">#1336</a></li>
<li>Upgrade prettier from 2.8.8 to 3.6.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">#1334</a></li>
<li>Upgrade actions/publish-action from 0.3.0 to 0.4.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">#1362</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-node/compare/v5...v6.0.0">https://github.com/actions/setup-node/compare/v5...v6.0.0</a></p>
<h2>v5.0.0</h2>
<h2>What's Changed</h2>
<h3>Breaking Changes</h3>
<ul>
<li>Enhance caching in setup-node with automatic package manager detection by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="">actions/setup-node#1348</a></li>
</ul>
<p>This update, introduces automatic caching when a valid <code>packageManager</code> field is present in your <code>package.json</code>. This aims to improve workflow performance and make dependency management more seamless.
To disable this automatic caching, set <code>package-manager-cache: false</code></p>
<pre lang="yaml"><code>steps:
- uses: actions/checkout@v5
- uses: actions/setup-node@v5
  with:
    package-manager-cache: false
</code></pre>
<ul>
<li>Upgrade action to use node24 by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/setup-node#1325</a></li>
</ul>
<p>Make sure your runner is on version v2.327.1 or later to ensure compatibility with this release. <a href="https://github.com/actions/runner/releases/tag/v2.327.1">See Release Notes</a></p>
<h3>Dependency Upgrades</h3>
<ul>
<li>Upgrade <code>@​octokit/request-error</code> and <code>@​actions/github</code> by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-node#1227</a></li>
<li>Upgrade uuid from 9.0.1 to 11.1.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-node#1273</a></li>
<li>Upgrade undici from 5.28.5 to 5.29.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-node#1295</a></li>
<li>Upgrade form-data to bring in fix for critical vulnerability by <a href="https://github.com/gowridurgad"><code>@​gowridurgad</code></a> in <a href="">actions/setup-node#1332</a></li>
<li>Upgrade actions/checkout from 4 to 5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-node#1345</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> made their first contribution in <a href="">actions/setup-node#1348</a></li>
<li><a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> made their first contribution in <a href="">actions/setup-node#1325</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-node/compare/v4...v5.0.0">https://github.com/actions/setup-node/compare/v4...v5.0.0</a></p>
<h2>v4.4.0</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2028fbc</code></a> Limit automatic caching to npm, update workflows and documentation (<a href="">#1374</a>)</li>
<li><a href=""><code>1342781</code></a> Bump actions/publish-action from 0.3.0 to 0.4.0 (<a href="">#1362</a>)</li>
<li><a href=""><code>89d709d</code></a> Bump prettier from 2.8.8 to 3.6.2 (<a href="">#1334</a>)</li>
<li><a href=""><code>cd2651c</code></a> Bump ts-jest from 29.1.2 to 29.4.1 (<a href="">#1336</a>)</li>
<li><a href=""><code>a0853c2</code></a> Bump actions/checkout from 4 to 5 (<a href="">#1345</a>)</li>
<li><a href=""><code>b7234cc</code></a> Upgrade action to use node24 (<a href="">#1325</a>)</li>
<li><a href=""><code>d7a1131</code></a> Enhance caching in setup-node with automatic package manager detection (<a href="">#1348</a>)</li>
<li><a href=""><code>5e2628c</code></a> Bumps form-data (<a href="">#1332</a>)</li>
<li><a href=""><code>65becef</code></a> Bump undici from 5.28.5 to 5.29.0 (<a href="">#1295</a>)</li>
<li><a href=""><code>7e24a65</code></a> Bump uuid from 9.0.1 to 11.1.0 (<a href="">#1273</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/actions/setup-node/compare/v4...v6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/setup-node&package-manager=github_actions&previous-version=4&new-version=6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `943409a90282`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.