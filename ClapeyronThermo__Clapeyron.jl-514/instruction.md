# Issue

**Title:** Bump actions/cache from 4 to 5

## Description

Bumps [actions/cache](https://github.com/actions/cache) from 4 to 5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/cache/releases">actions/cache's releases</a>.</em></p>
<blockquote>
<h2>v5.0.0</h2>
<blockquote>
<p>[!IMPORTANT]
<strong><code>actions/cache@v5</code> runs on the Node.js 24 runtime and requires a minimum Actions Runner version of <code>2.327.1</code>.</strong></p>
<p>If you are using self-hosted runners, ensure they are updated before upgrading.</p>
</blockquote>
<hr />
<h2>What's Changed</h2>
<ul>
<li>Upgrade to use node24 by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/cache#1630</a></li>
<li>Prepare v5.0.0 release by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/cache#1684</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/cache/compare/v4.3.0...v5.0.0">https://github.com/actions/cache/compare/v4.3.0...v5.0.0</a></p>
<h2>v4.3.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Add note on runner versions by <a href="https://github.com/GhadimiR"><code>@​GhadimiR</code></a> in <a href="">actions/cache#1642</a></li>
<li>Prepare <code>v4.3.0</code> release by <a href="https://github.com/Link"><code>@​Link</code></a>- in <a href="">actions/cache#1655</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/GhadimiR"><code>@​GhadimiR</code></a> made their first contribution in <a href="">actions/cache#1642</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/cache/compare/v4...v4.3.0">https://github.com/actions/cache/compare/v4...v4.3.0</a></p>
<h2>v4.2.4</h2>
<h2>What's Changed</h2>
<ul>
<li>Update README.md by <a href="https://github.com/nebuk89"><code>@​nebuk89</code></a> in <a href="">actions/cache#1620</a></li>
<li>Upgrade <code>@actions/cache</code> to <code>4.0.5</code> and move <code>@protobuf-ts/plugin</code> to dev depdencies by <a href="https://github.com/Link"><code>@​Link</code></a>- in <a href="">actions/cache#1634</a></li>
<li>Prepare release <code>4.2.4</code> by <a href="https://github.com/Link"><code>@​Link</code></a>- in <a href="">actions/cache#1636</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/nebuk89"><code>@​nebuk89</code></a> made their first contribution in <a href="">actions/cache#1620</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/cache/compare/v4...v4.2.4">https://github.com/actions/cache/compare/v4...v4.2.4</a></p>
<h2>v4.2.3</h2>
<h2>What's Changed</h2>
<ul>
<li>Update to use <code>@​actions/cache</code> 4.0.3 package &amp; prepare for new release by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/cache#1577</a> (SAS tokens for cache entries are now masked in debug logs)</li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> made their first contribution in <a href="">actions/cache#1577</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/cache/compare/v4.2.2...v4.2.3">https://github.com/actions/cache/compare/v4.2.2...v4.2.3</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/actions/cache/blob/main/RELEASES.md">actions/cache's changelog</a>.</em></p>
<blockquote>
<h1>Releases</h1>
<h2>Changelog</h2>
<h3>5.0.1</h3>
<ul>
<li>Update <code>@azure/storage-blob</code> to <code>^12.29.1</code> via <code>@actions/cache@5.0.1</code> <a href="">#1685</a></li>
</ul>
<h3>5.0.0</h3>
<blockquote>
<p>[!IMPORTANT]
<code>actions/cache@v5</code> runs on the Node.js 24 runtime and requires a minimum Actions Runner version of <code>2.327.1</code>.
If you are using self-hosted runners, ensure they are updated before upgrading.</p>
</blockquote>
<h3>4.3.0</h3>
<ul>
<li>Bump <code>@actions/cache</code> to <a href="">v4.1.0</a></li>
</ul>
<h3>4.2.4</h3>
<ul>
<li>Bump <code>@actions/cache</code> to v4.0.5</li>
</ul>
<h3>4.2.3</h3>
<ul>
<li>Bump <code>@actions/cache</code> to v4.0.3 (obfuscates SAS token in debug logs for cache entries)</li>
</ul>
<h3>4.2.2</h3>
<ul>
<li>Bump <code>@actions/cache</code> to v4.0.2</li>
</ul>
<h3>4.2.1</h3>
<ul>
<li>Bump <code>@actions/cache</code> to v4.0.1</li>
</ul>
<h3>4.2.0</h3>
<p>TLDR; The cache backend service has been rewritten from the ground up for improved performance and reliability. <a href="https://github.com/actions/cache">actions/cache</a> now integrates with the new cache service (v2) APIs.</p>
<p>The new service will gradually roll out as of <strong>February 1st, 2025</strong>. The legacy service will also be sunset on the same date. Changes in these release are <strong>fully backward compatible</strong>.</p>
<p><strong>We are deprecating some versions of this action</strong>. We recommend upgrading to version <code>v4</code> or <code>v3</code> as soon as possible before <strong>February 1st, 2025.</strong> (Upgrade instructions below).</p>
<p>If you are using pinned SHAs, please use the SHAs of versions <code>v4.2.0</code> or <code>v3.4.0</code></p>
<p>If you do not upgrade, all workflow runs using any of the deprecated <a href="https://github.com/actions/cache">actions/cache</a> will fail.</p>
<p>Upgrading to the recommended versions will not break your workflows.</p>
<h3>4.1.2</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>9255dc7</code></a> Merge pull request <a href="">#1686</a> from actions/cache-v5.0.1-release</li>
<li><a href=""><code>8ff5423</code></a> chore: release v5.0.1</li>
<li><a href=""><code>9233019</code></a> Merge pull request <a href="">#1685</a> from salmanmkc/node24-storage-blob-fix</li>
<li><a href=""><code>b975f2b</code></a> fix: add peer property to package-lock.json for dependencies</li>
<li><a href=""><code>d0a0e18</code></a> fix: update license files for <code>@​actions/cache</code>, fast-xml-parser, and strnum</li>
<li><a href=""><code>74de208</code></a> fix: update <code>@​actions/cache</code> to ^5.0.1 for Node.js 24 punycode fix</li>
<li><a href=""><code>ac7f115</code></a> peer</li>
<li><a href=""><code>b0f846b</code></a> fix: update <code>@​actions/cache</code> with storage-blob fix for Node.js 24 punycode depr...</li>
<li><a href=""><code>a783357</code></a> Merge pull request <a href="">#1684</a> from actions/prepare-cache-v5-release</li>
<li><a href=""><code>3bb0d78</code></a> docs: highlight v5 runner requirement in releases</li>
<li>Additional commits viewable in <a href="https://github.com/actions/cache/compare/v4...v5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/cache&package-manager=github_actions&previous-version=4&new-version=5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1236ae20b84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.