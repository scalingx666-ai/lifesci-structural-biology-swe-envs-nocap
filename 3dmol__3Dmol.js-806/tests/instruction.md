# Issue

**Title:** Bump webpack from 5.92.1 to 5.94.0

## Description

Bumps [webpack](https://github.com/webpack/webpack) from 5.92.1 to 5.94.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack/releases">webpack's releases</a>.</em></p>
<blockquote>
<h2>v5.94.0</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Added runtime condition for harmony reexport checked</li>
<li>Handle properly <code>data</code>/<code>http</code>/<code>https</code> protocols in source maps</li>
<li>Make <code>bigint</code> optimistic when browserslist not found</li>
<li>Move <code>@​types/eslint-scope</code> to dev deps</li>
<li>Related in asset stats is now always an array when no related found</li>
<li>Handle ASI for export declarations</li>
<li>Mangle destruction incorrect with export named default properly</li>
<li>Fixed unexpected asi generation with sequence expression</li>
<li>Fixed a lot of types</li>
</ul>
<h2>New Features</h2>
<ul>
<li>Added new external type &quot;module-import&quot;</li>
<li>Support <code>webpackIgnore</code> for <code>new URL()</code> construction</li>
<li>[CSS] <code>@import</code> pathinfo support</li>
</ul>
<h2>Security</h2>
<ul>
<li>Fixed DOM clobbering in auto public path</li>
</ul>
<h2>v5.93.0</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Generate correct relative path to runtime chunks</li>
<li>Makes <code>DefinePlugin</code> quieter under default log level</li>
<li>Fixed mangle destructuring default in namespace import</li>
<li>Fixed consumption of eager shared modules for module federation</li>
<li>Strip slash for pretty regexp</li>
<li>Calculate correct contenthash for CSS generator options</li>
</ul>
<h2>New Features</h2>
<ul>
<li>Added the <code>binary</code> generator option for asset modules to explicitly keep source maps produced by loaders</li>
<li>Added the <code>modern-module</code> library value for tree shakable output</li>
<li>Added the <code>overrideStrict</code> option to override strict or non-strict mode for javascript modules</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>eabf85d</code></a> chore(release): 5.94.0</li>
<li><a href=""><code>955e057</code></a> security: fix DOM clobbering in auto public path</li>
<li><a href=""><code>9822387</code></a> test: fix</li>
<li><a href=""><code>cbb86ed</code></a> test: fix</li>
<li><a href=""><code>5ac3d7f</code></a> fix: unexpected asi generation with sequence expression</li>
<li><a href=""><code>2411661</code></a> security: fix DOM clobbering in auto public path</li>
<li><a href=""><code>b8c03d4</code></a> fix: unexpected asi generation with sequence expression</li>
<li><a href=""><code>f46a03c</code></a> revert: do not use heuristic fallback for &quot;module-import&quot;</li>
<li><a href=""><code>60f1898</code></a> fix: do not use heuristic fallback for &quot;module-import&quot;</li>
<li><a href=""><code>66306aa</code></a> Revert &quot;fix: module-import get fallback from externalsPresets&quot;</li>
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack/compare/v5.92.1...v5.94.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=webpack&package-manager=npm_and_yarn&previous-version=5.92.1&new-version=5.94.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/3dmol/3Dmol.js/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc817a8b5746`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.