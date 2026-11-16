# Issue

**Title:** build(deps): bump github/codeql-action from 3 to 4

## Description

Bumps [github/codeql-action](https://github.com/github/codeql-action) from 3 to 4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/releases">github/codeql-action's releases</a>.</em></p>
<blockquote>
<h2>v3.30.8</h2>
<h1>CodeQL Action Changelog</h1>
<p>See the <a href="https://github.com/github/codeql-action/releases">releases page</a> for the relevant changes to the CodeQL CLI and language packs.</p>
<h2>3.30.8 - 10 Oct 2025</h2>
<p>No user facing changes.</p>
<p>See the full <a href="https://github.com/github/codeql-action/blob/v3.30.8/CHANGELOG.md">CHANGELOG.md</a> for more information.</p>
<h2>v3.30.7</h2>
<h1>CodeQL Action Changelog</h1>
<p>See the <a href="https://github.com/github/codeql-action/releases">releases page</a> for the relevant changes to the CodeQL CLI and language packs.</p>
<h2>3.30.7 - 06 Oct 2025</h2>
<p>No user facing changes.</p>
<p>See the full <a href="https://github.com/github/codeql-action/blob/v3.30.7/CHANGELOG.md">CHANGELOG.md</a> for more information.</p>
<h2>v3.30.6</h2>
<h1>CodeQL Action Changelog</h1>
<p>See the <a href="https://github.com/github/codeql-action/releases">releases page</a> for the relevant changes to the CodeQL CLI and language packs.</p>
<h2>3.30.6 - 02 Oct 2025</h2>
<ul>
<li>Update default CodeQL bundle version to 2.23.2. <a href="">#3168</a></li>
</ul>
<p>See the full <a href="https://github.com/github/codeql-action/blob/v3.30.6/CHANGELOG.md">CHANGELOG.md</a> for more information.</p>
<h2>v3.30.5</h2>
<h1>CodeQL Action Changelog</h1>
<p>See the <a href="https://github.com/github/codeql-action/releases">releases page</a> for the relevant changes to the CodeQL CLI and language packs.</p>
<h2>3.30.5 - 26 Sep 2025</h2>
<ul>
<li>We fixed a bug that was introduced in <code>3.30.4</code> with <code>upload-sarif</code> which resulted in files without a <code>.sarif</code> extension not getting uploaded. <a href="">#3160</a></li>
</ul>
<p>See the full <a href="https://github.com/github/codeql-action/blob/v3.30.5/CHANGELOG.md">CHANGELOG.md</a> for more information.</p>
<h2>v3.30.4</h2>
<h1>CodeQL Action Changelog</h1>
<p>See the <a href="https://github.com/github/codeql-action/releases">releases page</a> for the relevant changes to the CodeQL CLI and language packs.</p>
<h2>3.30.4 - 25 Sep 2025</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/blob/main/CHANGELOG.md">github/codeql-action's changelog</a>.</em></p>
<blockquote>
<h2>3.29.4 - 23 Jul 2025</h2>
<p>No user facing changes.</p>
<h2>3.29.3 - 21 Jul 2025</h2>
<p>No user facing changes.</p>
<h2>3.29.2 - 30 Jun 2025</h2>
<ul>
<li>Experimental: When the <code>quality-queries</code> input for the <code>init</code> action is provided with an argument, separate <code>.quality.sarif</code> files are produced and uploaded for each language with the results of the specified queries. Do not use this in production as it is part of an internal experiment and subject to change at any time. <a href="">#2935</a></li>
</ul>
<h2>3.29.1 - 27 Jun 2025</h2>
<ul>
<li>Fix bug in PR analysis where user-provided <code>include</code> query filter fails to exclude non-included queries. <a href="">#2938</a></li>
<li>Update default CodeQL bundle version to 2.22.1. <a href="">#2950</a></li>
</ul>
<h2>3.29.0 - 11 Jun 2025</h2>
<ul>
<li>Update default CodeQL bundle version to 2.22.0. <a href="">#2925</a></li>
<li>Bump minimum CodeQL bundle version to 2.16.6. <a href="">#2912</a></li>
</ul>
<h2>3.28.21 - 28 July 2025</h2>
<p>No user facing changes.</p>
<h2>3.28.20 - 21 July 2025</h2>
<ul>
<li>Remove support for combining SARIF files from a single upload for GHES 3.18, see <a href="https://github.blog/changelog/2024-05-06-code-scanning-will-stop-combining-runs-from-a-single-upload/">the changelog post</a>. <a href="">#2959</a></li>
</ul>
<h2>3.28.19 - 03 Jun 2025</h2>
<ul>
<li>The CodeQL Action no longer includes its own copy of the extractor for the <code>actions</code> language, which is currently in public preview.
The <code>actions</code> extractor has been included in the CodeQL CLI since v2.20.6. If your workflow has enabled the <code>actions</code> language <em>and</em> you have pinned
your <code>tools:</code> property to a specific version of the CodeQL CLI earlier than v2.20.6, you will need to update to at least CodeQL v2.20.6 or disable
<code>actions</code> analysis.</li>
<li>Update default CodeQL bundle version to 2.21.4. <a href="">#2910</a></li>
</ul>
<h2>3.28.18 - 16 May 2025</h2>
<ul>
<li>Update default CodeQL bundle version to 2.21.3. <a href="">#2893</a></li>
<li>Skip validating SARIF produced by CodeQL for improved performance. <a href="">#2894</a></li>
<li>The number of threads and amount of RAM used by CodeQL can now be set via the <code>CODEQL_THREADS</code> and <code>CODEQL_RAM</code> runner environment variables. If set, these environment variables override the <code>threads</code> and <code>ram</code> inputs respectively. <a href="">#2891</a></li>
</ul>
<h2>3.28.17 - 02 May 2025</h2>
<ul>
<li>Update default CodeQL bundle version to 2.21.2. <a href="">#2872</a></li>
</ul>
<h2>3.28.16 - 23 Apr 2025</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a841c54</code></a> Scratch <code>uploadSpecifiedFiles</code> tests, make <code>uploadPayload</code> tests instead</li>
<li><a href=""><code>aeb12f6</code></a> Merge branch 'main' into redsun82/skip-sarif-upload-tests</li>
<li><a href=""><code>6fd4ceb</code></a> Merge pull request <a href="">#3189</a> from github/henrymercer/download-codeql-rate-limit</li>
<li><a href=""><code>196a3e5</code></a> Merge pull request <a href="">#3188</a> from github/mbg/telemetry/partial-config</li>
<li><a href=""><code>98abb87</code></a> Add configuration error for rate limited CodeQL download</li>
<li><a href=""><code>bdd2cdf</code></a> Also include <code>language</code> in error status report for <code>start-proxy</code>, if available</li>
<li><a href=""><code>fb14878</code></a> Include <code>languages</code> in <code>start-proxy</code> telemetry</li>
<li><a href=""><code>2ff418f</code></a> Parse <code>language</code> before calling <code>getCredentials</code></li>
<li>See full diff in <a href="https://github.com/github/codeql-action/compare/v3...v4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github/codeql-action&package-manager=github_actions&previous-version=3&new-version=4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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