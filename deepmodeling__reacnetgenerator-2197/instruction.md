# Issue

**Title:** build(deps-dev): bump sass-loader from 14.1.1 to 14.2.1 in /reacnetgenerator/static/webpack

## Description

Bumps [sass-loader](https://github.com/webpack-contrib/sass-loader) from 14.1.1 to 14.2.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack-contrib/sass-loader/releases">sass-loader's releases</a>.</em></p>
<blockquote>
<h2>v14.2.1</h2>
<h3><a href="https://github.com/webpack-contrib/sass-loader/compare/v14.2.0...v14.2.1">14.2.1</a> (2024-04-16)</h3>
<h3>Bug Fixes</h3>
<ul>
<li>avoid multiple sass compiler creation (<a href="">#1199</a>) (<a href="">77051d8</a>)</li>
</ul>
<h2>v14.2.0</h2>
<h2><a href="https://github.com/webpack-contrib/sass-loader/compare/v14.1.1...v14.2.0">14.2.0</a> (2024-04-11)</h2>
<h3>Features</h3>
<ul>
<li>added the <code>modern-compiler</code> value for API to reuse compiler process (<a href="">#1195</a>) (<a href="">cef40a8</a>)</li>
<li>support webpack built-in resolver for <code>modern</code> and <code>modern-compiler</code> API (<a href="">#1197</a>) (<a href="">2265b72</a>)</li>
</ul>
<p>Notes:</p>
<p>Using the <code>modern-compiler</code> value for the <code>api</code> option together with <code>sass-embedded</code> reduces compilation time by 5-10 times, especially for projects using large files with a lot of <code>@import</code>/<code>@use</code>, for small files the build time reduction will not be significant.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/webpack-contrib/sass-loader/blob/master/CHANGELOG.md">sass-loader's changelog</a>.</em></p>
<blockquote>
<h3><a href="https://github.com/webpack-contrib/sass-loader/compare/v14.2.0...v14.2.1">14.2.1</a> (2024-04-16)</h3>
<h3>Bug Fixes</h3>
<ul>
<li>avoid multiple sass compiler creation (<a href="">#1199</a>) (<a href="">77051d8</a>)</li>
</ul>
<h2><a href="https://github.com/webpack-contrib/sass-loader/compare/v14.1.1...v14.2.0">14.2.0</a> (2024-04-11)</h2>
<h3>Features</h3>
<ul>
<li>added the <code>modern-compiler</code> value for API to reuse compiler process (<a href="">#1195</a>) (<a href="">cef40a8</a>)</li>
<li>support webpack built-in resolver for <code>modern</code> and <code>modern-compiler</code> API (<a href="">#1197</a>) (<a href="">2265b72</a>)</li>
</ul>
<p>Notes:</p>
<p>Using the <code>modern-compiler</code> value for the <code>api</code> option together with <code>sass-embedded</code> reduces compilation time by 5-10 times, especially for projects using large files with a lot of <code>@import</code>/<code>@use</code>, for small files the build time reduction will not be significant.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>dfcd3cc</code></a> chore(release): 14.2.1</li>
<li><a href=""><code>77051d8</code></a> fix: avoid multiple sass compiler creation (<a href="">#1199</a>)</li>
<li><a href=""><code>4edc139</code></a> chore(release): 14.2.0</li>
<li><a href=""><code>2265b72</code></a> feat: support webpack built-in resolver for <code>modern</code> and <code>modern-compiler</code> AP...</li>
<li><a href=""><code>a975db2</code></a> fix: use watchClose hook (<a href="">#1196</a>)</li>
<li><a href=""><code>cef40a8</code></a> feat: added the <code>modern-compiler</code> value for API to reuse compiler process (<a href="">#1</a>...</li>
<li><a href=""><code>13f0dc8</code></a> chore: upgrade dependencies to latest version (<a href="">#1194</a>)</li>
<li><a href=""><code>5d2cd80</code></a> chore: update codecov-action to v4 (<a href="">#1193</a>)</li>
<li><a href=""><code>31789cc</code></a> ci: fix commitlint check (<a href="">#1192</a>)</li>
<li>See full diff in <a href="https://github.com/webpack-contrib/sass-loader/compare/v14.1.1...v14.2.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sass-loader&package-manager=npm_and_yarn&previous-version=14.1.1&new-version=14.2.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1431d1ae201b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.