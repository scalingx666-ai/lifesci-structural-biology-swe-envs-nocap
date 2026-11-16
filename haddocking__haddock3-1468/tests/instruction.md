# Issue

**Title:** Bump plotly from 6.5.0 to 6.5.2

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.5.0 to 6.5.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.5.2</h2>
<h3>Fixed</h3>
<ul>
<li>Fix issue where pie trace <code>legend</code>, <code>showlegend</code> attributes don't accept array values [<a href="">#5464</a> and <a href="">#5465</a>], with thanks to <a href="https://github.com/my-tien"><code>@​my-tien</code></a> for the contribution!</li>
</ul>
<h2>v6.5.1</h2>
<h3>Fixed</h3>
<ul>
<li>Fix issue where Plotly Express ignored trace-specific color sequences defined in templates via <code>template.data.&lt;trace_type&gt;</code> [<a href="">#5437</a>], with thanks to <a href="https://github.com/antonymilne"><code>@​antonymilne</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Speed up <code>validate_gantt</code> function [<a href="">#5386</a>], with thanks to <a href="https://github.com/misrasaurabh1"><code>@​misrasaurabh1</code></a> for the contribution!</li>
<li>Update plotly.js from version 3.3.0 to version 3.3.1. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.3.1">release notes</a> for more information. [<a href="">#5456</a>]. Notable changes include:
<ul>
<li>Add support for arrays for the pie properties <code>showlegend</code> and <code>legend</code>, so that these can be configured per slice. [<a href="">#7580</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.5.2] - 2026-01-14</h2>
<h3>Fixed</h3>
<ul>
<li>Fix issue where pie trace <code>legend</code>, <code>showlegend</code> attributes don't accept array values [<a href="">#5464</a> and <a href="">#5465</a>], with thanks to <a href="https://github.com/my-tien"><code>@​my-tien</code></a> for the contribution!</li>
</ul>
<h2>[6.5.1] - 2026-01-07</h2>
<h3>Fixed</h3>
<ul>
<li>Fix issue where Plotly Express ignored trace-specific color sequences defined in templates via <code>template.data.&lt;trace_type&gt;</code> [<a href="">#5437</a>], with thanks to <a href="https://github.com/antonymilne"><code>@​antonymilne</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Speed up <code>validate_gantt</code> function [<a href="">#5386</a>], with thanks to <a href="https://github.com/misrasaurabh1"><code>@​misrasaurabh1</code></a> for the contribution!</li>
<li>Update plotly.js from version 3.3.0 to version 3.3.1. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.3.1">release notes</a> for more information. [<a href="">#5456</a>]. Notable changes include:
<ul>
<li>Add support for arrays for the pie properties <code>showlegend</code> and <code>legend</code>, so that these can be configured per slice. [<a href="">#7580</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>36d8bf8</code></a> Version changes for v6.5.2</li>
<li><a href=""><code>1f45fa5</code></a> Merge pull request <a href="">#5467</a> from plotly/cam/update-graph-objs</li>
<li><a href=""><code>7f57ccb</code></a> fix: Update graph_objs per recent bug fixes</li>
<li><a href=""><code>3293f4d</code></a> Merge pull request <a href="">#5466</a> from plotly/merge-doc-prod-to-main</li>
<li><a href=""><code>61c9f6f</code></a> Merge branch 'main' into merge-doc-prod-to-main</li>
<li><a href=""><code>dad2520</code></a> Merge pull request <a href="">#5465</a> from my-tien/legend-arrayok</li>
<li><a href=""><code>b587428</code></a> Merge branch 'main' into legend-arrayok</li>
<li><a href=""><code>5a0440c</code></a> Merge pull request <a href="">#5464</a> from plotly/cam/5463/handle-arrays-booleanvalidator</li>
<li><a href=""><code>fff298c</code></a> Simplify test</li>
<li><a href=""><code>cef18a9</code></a> Separate test for coercion of geo1 to geo and legend1 to legend</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.5.0...v6.5.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.5.0&new-version=6.5.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `17dcc021b27a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.