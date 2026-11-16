# Issue

**Title:** Bump actions/checkout from 2 to 3

## Description

Bumps [actions/checkout](https://github.com/actions/checkout) from 2 to 3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/checkout/releases">actions/checkout's releases</a>.</em></p>
<blockquote>
<h2>v3.0.0</h2>
<ul>
<li>Updated to the node16 runtime by default
<ul>
<li>This requires a minimum <a href="https://github.com/actions/runner/releases/tag/v2.285.0">Actions Runner</a> version of v2.285.0 to run, which is by default available in GHES 3.4 or later.</li>
</ul>
</li>
</ul>
<h2>v2.7.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Add new public key for known_hosts (<a href="">#1237</a>) by <a href="https://github.com/TingluoHuang"><code>@​TingluoHuang</code></a> in <a href="">actions/checkout#1238</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/checkout/compare/v2.6.0...v2.7.0">https://github.com/actions/checkout/compare/v2.6.0...v2.7.0</a></p>
<h2>v2.6.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Add backports to v2 branch by <a href="https://github.com/cory-miller"><code>@​cory-miller</code></a> in <a href="">actions/checkout#1040</a>
<ul>
<li>Includes backports from the following changes: <a href="">actions/checkout#964</a>, <a href="">actions/checkout#1002</a>, <a href="">actions/checkout#1029</a></li>
<li>Upgraded the licensed version to match what is used in v3.</li>
</ul>
</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/checkout/compare/v2.5.0...v2.6.0">https://github.com/actions/checkout/compare/v2.5.0...v2.6.0</a></p>
<h2>v2.5.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Update <code>@​actions/core</code> to 1.10.0 by <a href="https://github.com/rentziass"><code>@​rentziass</code></a> in <a href="">actions/checkout#962</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/checkout/compare/v2...v2.5.0">https://github.com/actions/checkout/compare/v2...v2.5.0</a></p>
<h2>v2.4.2</h2>
<h2>What's Changed</h2>
<ul>
<li>Add set-safe-directory input to allow customers to take control. (<a href="">#770</a>) by <a href="https://github.com/TingluoHuang"><code>@​TingluoHuang</code></a> in <a href="">actions/checkout#776</a></li>
<li>Prepare changelog for v2.4.2. by <a href="https://github.com/TingluoHuang"><code>@​TingluoHuang</code></a> in <a href="">actions/checkout#778</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/checkout/compare/v2...v2.4.2">https://github.com/actions/checkout/compare/v2...v2.4.2</a></p>
<h2>v2.4.1</h2>
<ul>
<li>Fixed an issue where checkout failed to run in container jobs due to the new git setting <code>safe.directory</code></li>
</ul>
<h2>v2.4.0</h2>
<ul>
<li>Convert SSH URLs like <code>org-&lt;ORG_ID&gt;@github.com:</code> to <code>https://github.com/</code> - <a href="">pr</a></li>
</ul>
<h2>v2.3.5</h2>
<p>Update dependencies</p>
<h2>v2.3.4</h2>
<ul>
<li><a href="">Add missing <code>await</code>s</a></li>
<li><a href="">Swap to Environment Files</a></li>
</ul>
<h2>v2.3.3</h2>
<ul>
<li><a href="">Remove Unneeded commit information from build logs</a></li>
<li><a href="">Add Licensed to verify third party dependencies</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/actions/checkout/blob/main/CHANGELOG.md">actions/checkout's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h2>v3.4.0</h2>
<ul>
<li><a href="">Upgrade codeql actions to v2</a></li>
<li><a href="">Upgrade dependencies</a></li>
<li><a href="">Upgrade <code>@​actions/io</code></a></li>
</ul>
<h2>v3.3.0</h2>
<ul>
<li><a href="">Implement branch list using callbacks from exec function</a></li>
<li><a href="">Add in explicit reference to private checkout options</a></li>
<li>[Fix comment typos (that got added in <a href="">#770</a>)](<a href="">actions/checkout#1057</a>)</li>
</ul>
<h2>v3.2.0</h2>
<ul>
<li><a href="">Add GitHub Action to perform release</a></li>
<li><a href="">Fix status badge</a></li>
<li><a href="">Replace datadog/squid with ubuntu/squid Docker image</a></li>
<li><a href="">Wrap pipeline commands for submoduleForeach in quotes</a></li>
<li><a href="">Update <code>@​actions/io</code> to 1.1.2</a></li>
<li><a href="">Upgrading version to 3.2.0</a></li>
</ul>
<h2>v3.1.0</h2>
<ul>
<li><a href="">Use <code>@​actions/core</code> <code>saveState</code> and <code>getState</code></a></li>
<li><a href="">Add <code>github-server-url</code> input</a></li>
</ul>
<h2>v3.0.2</h2>
<ul>
<li><a href="">Add input <code>set-safe-directory</code></a></li>
</ul>
<h2>v3.0.1</h2>
<ul>
<li><a href="">Fixed an issue where checkout failed to run in container jobs due to the new git setting <code>safe.directory</code></a></li>
<li><a href="">Bumped various npm package versions</a></li>
</ul>
<h2>v3.0.0</h2>
<ul>
<li><a href="">Update to node 16</a></li>
</ul>
<h2>v2.3.1</h2>
<ul>
<li><a href="">Fix default branch resolution for .wiki and when using SSH</a></li>
</ul>
<h2>v2.3.0</h2>
<ul>
<li><a href="">Fallback to the default branch</a></li>
</ul>
<h2>v2.2.0</h2>
<ul>
<li><a href="">Fetch all history for all tags and branches when fetch-depth=0</a></li>
</ul>
<h2>v2.1.1</h2>
<ul>
<li>Changes to support GHES (<a href="">here</a> and <a href="">here</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8f4b7f8</code></a> Add new public key for known_hosts (<a href="">#1237</a>)</li>
<li><a href=""><code>cd6a9fd</code></a> Update update-main-version.yml</li>
<li><a href=""><code>24cb908</code></a> Bump <code>@​actions/io</code> to v1.1.3 (<a href="">#1225</a>)</li>
<li><a href=""><code>27135e3</code></a> Upgrade dependencies (<a href="">#1210</a>)</li>
<li><a href=""><code>7b18718</code></a> Upgrade codeql actions to v2 (<a href="">#1209</a>)</li>
<li><a href=""><code>ac59398</code></a> Fix comment typos (that got added in <a href="">#770</a>) (<a href="">#1057</a>)</li>
<li><a href=""><code>3ba5ee6</code></a> Add in explicit reference to private checkout options (<a href="">#1050</a>)</li>
<li><a href=""><code>8856415</code></a> Implement branch list using callbacks from exec function (<a href="">#1045</a>)</li>
<li><a href=""><code>755da8c</code></a> 3.2.0 (<a href="">#1039</a>)</li>
<li><a href=""><code>26d48e8</code></a> Update <code>@​actions/io</code> to 1.1.2 (<a href="">#1029</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/actions/checkout/compare/v2...v3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/checkout&package-manager=github_actions&previous-version=2&new-version=3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16931dad83a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.