# Issue

**Title:** build(deps-dev): bump webpack from 5.91.0 to 5.95.0 in /reacnetgenerator/static/webpack

## Description

Bumps [webpack](https://github.com/webpack/webpack) from 5.91.0 to 5.95.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack/releases">webpack's releases</a>.</em></p>
<blockquote>
<h2>v5.95.0</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Fixed hanging when attempting to read a symlink-like file that it can't read</li>
<li>Handle <code>default</code> for import context element dependency</li>
<li>Merge duplicate chunks call after split chunks</li>
<li>Generate correctly code for dynamically importing the same file twice and destructuring</li>
<li>Use content hash as [base] and [name] for extracted DataURI's</li>
<li>Distinguish <code>module</code> and <code>import</code> in <code>module-import</code> for externals <code>import</code>'s</li>
<li>[Types] Make <code>EnvironmentPlugin</code> default values types less strict</li>
<li>[Types] Typescript 5.6 compatibility</li>
</ul>
<h2>New Features</h2>
<ul>
<li>Add new <code>optimization.entryIife</code> option (<code>true</code> by default for the <code>production</code> mode)</li>
<li>Pass output.hash* options to loader context</li>
</ul>
<h2>Performance</h2>
<ul>
<li>Avoid unneeded re-visit in build chunk graph</li>
</ul>
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
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>e20fd63</code></a> chore(release): 5.95.0</li>
<li><a href=""><code>4866b0d</code></a> feat: added new <code>optimization.entryIife</code> option</li>
<li><a href=""><code>d90f692</code></a> fix: merge duplicate chunks after split chunks</li>
<li><a href=""><code>90dec30</code></a> fix(externals): distinguish “module” and “import” in “module-import”</li>
<li><a href=""><code>c1a0a46</code></a> fix(externals): distinguish “module” and “import” in “module-import”</li>
<li><a href=""><code>14d8fa8</code></a> fix: all tests cases</li>
<li><a href=""><code>dae16ad</code></a> feat: pass output.hash* options to loader context</li>
<li><a href=""><code>75d185d</code></a> feat: pass <code>output.hash*</code> options to loader context</li>
<li><a href=""><code>46e0b9c</code></a> test: update</li>
<li><a href=""><code>8e62f9f</code></a> test</li>
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack/compare/v5.91.0...v5.95.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=webpack&package-manager=npm_and_yarn&previous-version=5.91.0&new-version=5.95.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f5a25e96d2c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.