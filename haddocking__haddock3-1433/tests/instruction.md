# Issue

**Title:** Bump plotly from 6.3.0 to 6.3.1

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.3.0 to 6.3.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.3.1</h2>
<h3>Updated</h3>
<ul>
<li>Update Plotly.js from version 3.1.0 to version 3.1.1. See the Plotly.js <a href="https://github.com/plotly/plotly.js/releases">release notes</a> for more information. [<a href="">#5357</a>]. Notable changes include:
<ul>
<li>Fix issue preventing Scattergl plots with text elements from rendering [<a href="">plotly.js#7563</a>]</li>
</ul>
</li>
<li>Use native legends when converting from matplotlib [<a href="">#5312</a>], with thanks to <a href="https://github.com/robertoffmoura"><code>@​robertoffmoura</code></a> to the contribution!</li>
<li>Allow <code>shared_yaxes</code> to work with secondary axes [<a href="">#5180</a>], with thanks to <a href="https://github.com/gmjw"><code>@​gmjw</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix issue where width/height in plot layout were not respected during Kaleido image export [<a href="">#5325</a>]</li>
<li>Fix typo in default argument to <code>_ternary_contour.py</code> [<a href="">#5315</a>], with thanks to <a href="https://github.com/Lexachoc"><code>@​Lexachoc</code></a> for the contribution!</li>
<li>Fix incorrect <code>fig.show()</code> behavior when <code>ipython</code> is installed [<a href="">#5258</a>]</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/plotly/plotly.py/compare/v6.3.0...v6.3.1">https://github.com/plotly/plotly.py/compare/v6.3.0...v6.3.1</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.3.1] - 2025-10-02</h2>
<h3>Updated</h3>
<ul>
<li>Update Plotly.js from version 3.1.0 to version 3.1.1. See the Plotly.js <a href="https://github.com/plotly/plotly.js/releases">release notes</a> for more information. [<a href="">#5357</a>]. Notable changes include:
<ul>
<li>Fix issue preventing Scattergl plots with text elements from rendering [<a href="">plotly.js#7563</a>]</li>
</ul>
</li>
<li>Use native legends when converting from matplotlib [<a href="">#5312</a>], with thanks to <a href="https://github.com/robertoffmoura"><code>@​robertoffmoura</code></a> to the contribution!</li>
<li>Allow <code>shared_yaxes</code> to work with secondary axes [<a href="">#5180</a>], with thanks to <a href="https://github.com/gmjw"><code>@​gmjw</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix issue where width/height in plot layout were not respected during Kaleido image export [<a href="">#5325</a>]</li>
<li>Fix typo in default argument to <code>_ternary_contour.py</code> [<a href="">#5315</a>], with thanks to <a href="https://github.com/Lexachoc"><code>@​Lexachoc</code></a> for the contribution!</li>
<li>Fix incorrect <code>fig.show()</code> behavior when <code>ipython</code> is installed [<a href="">#5258</a>]</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ecb00fe</code></a> update uv lockfile</li>
<li><a href=""><code>4e96a43</code></a> version changes for v6.3.1</li>
<li><a href=""><code>a0de8c9</code></a> Merge pull request <a href="">#5361</a> from plotly/matplotlib-import-fix</li>
<li><a href=""><code>832b46c</code></a> Merge branch 'main' into matplotlib-import-fix</li>
<li><a href=""><code>b258862</code></a> Merge pull request <a href="">#5180</a> from gmjw/secondary-y-shared</li>
<li><a href=""><code>2c5e2b6</code></a> fix matplotlib import</li>
<li><a href=""><code>610b7ee</code></a> Merge branch 'main' into secondary-y-shared</li>
<li><a href=""><code>fbbc9d6</code></a> Merge pull request <a href="">#5322</a> from mgorny/plt-import</li>
<li><a href=""><code>d2af541</code></a> Merge pull request <a href="">#5258</a> from plotly/fix-default-renderer-when-ipython-installed</li>
<li><a href=""><code>ead0c76</code></a> Merge branch 'main' into plt-import</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.3.0...v6.3.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.3.0&new-version=6.3.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bffd35f3348c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.