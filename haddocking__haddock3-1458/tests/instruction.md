# Issue

**Title:** Bump plotly from 6.4.0 to 6.5.0

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.4.0 to 6.5.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.5.0</h2>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.2.0 to version 3.3.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.3.0">release notes</a> for more information. [<a href="">#5421</a>]. Notable changes include:
<ul>
<li>Add <code>hovertemplate</code> for <code>candlestick</code> and <code>ohlc</code> traces [<a href="">#7619</a>]</li>
</ul>
</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix bug where numpy datetime contained in Python list was converted to integer [<a href="">#5415</a>]</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/plotly/plotly.py/compare/v6.4.0...v6.5.0">https://github.com/plotly/plotly.py/compare/v6.4.0...v6.5.0</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.5.0] - 2025-11-17</h2>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.2.0 to version 3.3.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.3.0">release notes</a> for more information. [<a href="">#5421</a>]. Notable changes include:
<ul>
<li>Add <code>hovertemplate</code> for <code>candlestick</code> and <code>ohlc</code> traces [<a href="">#7619</a>]</li>
</ul>
</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix bug where numpy datetime contained in Python list was converted to integer [<a href="">#5415</a>]</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>b19f8e5</code></a> changelog formatting</li>
<li><a href=""><code>1ec9a16</code></a> Update CHANGELOG.md</li>
<li><a href=""><code>83a2b0b</code></a> version changes for v6.5.0</li>
<li><a href=""><code>a49f495</code></a> Merge pull request <a href="">#5421</a> from plotly/update-plotlyjs-3.3.0</li>
<li><a href=""><code>f687526</code></a> update plotly/labextension with files from ci</li>
<li><a href=""><code>83ab425</code></a> update package-lock with new plotly.js</li>
<li><a href=""><code>a3480f0</code></a> package-lock indentation</li>
<li><a href=""><code>e519d5a</code></a> update plotly.js to v3.3.0</li>
<li><a href=""><code>22b0ac0</code></a> Merge pull request <a href="">#5415</a> from plotly/fix-np-date-handling-issue</li>
<li><a href=""><code>aa30be5</code></a> Update _plotly_utils/basevalidators.py</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.4.0...v6.5.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.4.0&new-version=6.5.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `11a6f64a8cbf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.