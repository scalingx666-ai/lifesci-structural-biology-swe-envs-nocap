# Issue

**Title:** Bump plotly from 6.8.0 to 6.9.0

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.8.0 to 6.9.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.9.0</h2>
<h3>Fixed</h3>
<ul>
<li>Raise a clear <code>ValueError</code> when an unsupported marginal plot type is passed to Plotly Express, instead of failing later with a cryptic <code>'NoneType' object has no attribute 'constructor'</code> message [<a href="">#5625</a>], with thanks to <a href="https://github.com/eugen-goebel"><code>@​eugen-goebel</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 3.7.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.7.0">release notes</a> for more information [<a href="">#5639</a>]. Notable changes include:
<ul>
<li>Rename <code>sendDataToCloud</code> modebar button to <code>sendChartToCloud</code>, and update to upload chart to Plotly Cloud [<a href="">#7802</a>, <a href="">#7852</a>, <a href="">#7854</a>]. NOTE: The Plotly Cloud endpoint for receiving charts is not yet functional, so this button won't complete the upload.</li>
<li>Fix stale <code>scattergl</code> error bars after toggling traces with mixed error bar visibility [<a href="">#7773</a>], with thanks to <a href="https://github.com/JulienIcon"><code>@​JulienIcon</code></a> for the contribution!</li>
<li>Fix geo <code>fitbounds</code> to choose a compact longitude range when point data straddles the antimeridian [<a href="">#7837</a>], with thanks to <a href="https://github.com/SharadhNaidu"><code>@​SharadhNaidu</code></a> for the contribution!</li>
</ul>
</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/plotly/plotly.py/compare/v6.8.0...v6.9.0">https://github.com/plotly/plotly.py/compare/v6.8.0...v6.9.0</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.9.0] - 2026-07-09</h2>
<h3>Fixed</h3>
<ul>
<li>Raise a clear <code>ValueError</code> when an unsupported marginal plot type is passed to Plotly Express, instead of failing later with a cryptic <code>'NoneType' object has no attribute 'constructor'</code> message [<a href="">#5625</a>], with thanks to <a href="https://github.com/eugen-goebel"><code>@​eugen-goebel</code></a> for the contribution!</li>
<li>Read and write figure JSON files as UTF-8 in <code>read_json</code>/<code>write_json</code> so figures containing non-ASCII text are handled correctly on platforms whose default encoding is not UTF-8 (e.g. cp1252 on Windows) [<a href="">#5633</a>]</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 3.7.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.7.0">release notes</a> for more information [<a href="">#5639</a>]. Notable changes include:
<ul>
<li>Rename <code>sendDataToCloud</code> modebar button to <code>sendChartToCloud</code>, and update to upload chart to Plotly Cloud [<a href="">#7802</a>, <a href="">#7852</a>, <a href="">#7854</a>]. NOTE: The Plotly Cloud endpoint for receiving charts is not yet functional, so this button won't complete the upload.</li>
<li>Fix stale <code>scattergl</code> error bars after toggling traces with mixed error bar visibility [<a href="">#7773</a>], with thanks to <a href="https://github.com/JulienIcon"><code>@​JulienIcon</code></a> for the contribution!</li>
<li>Fix geo <code>fitbounds</code> to choose a compact longitude range when point data straddles the antimeridian [<a href="">#7837</a>], with thanks to <a href="https://github.com/SharadhNaidu"><code>@​SharadhNaidu</code></a> for the contribution!</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>495134a</code></a> update date</li>
<li><a href=""><code>2e824d8</code></a> version changes for v6.9.0</li>
<li><a href=""><code>c27c986</code></a> Merge pull request <a href="">#5639</a> from plotly/update-plotlyjs-3.7.0</li>
<li><a href=""><code>3d63d05</code></a> typos</li>
<li><a href=""><code>fd7e3f1</code></a> update commands.py and CONTRIBUTING.md to reflect the fact that JS build arti...</li>
<li><a href=""><code>9a753fe</code></a> update changelog</li>
<li><a href=""><code>4ff6656</code></a> update built JS artifacts</li>
<li><a href=""><code>b3facc7</code></a> update plotly.js to v3.7.0</li>
<li><a href=""><code>5cdb606</code></a> Merge pull request <a href="">#5630</a> from eugen-goebel/fix-marginal-error-message-spacing</li>
<li><a href=""><code>8d47808</code></a> Add missing space in unsupported-marginal error message</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.8.0...v6.9.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.8.0&new-version=6.9.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9b04d689c174`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.