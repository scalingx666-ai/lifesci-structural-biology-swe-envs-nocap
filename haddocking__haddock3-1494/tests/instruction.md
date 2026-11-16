# Issue

**Title:** Bump plotly from 6.5.2 to 6.6.0

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.5.2 to 6.6.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.6.0</h2>
<h3>Fixed</h3>
<ul>
<li>Remove unneeded <code>type=&quot;text/javascript&quot;</code> attribute from <code>&lt;style&gt;</code> tag [<a href="">#5454</a>], with thanks to <a href="https://github.com/hannob"><code>@​hannob</code></a> for the contribution!</li>
<li>Remove global warning format side effect [<a href="">#5481</a>], with thanks to <a href="https://github.com/emmanuel-ferdman"><code>@​emmanuel-ferdman</code></a> for the contribution!</li>
<li>Fix spurious engine deprecation warning in write_image [<a href="">#5517</a>], with thanks to <a href="https://github.com/mosh3eb"><code>@​mosh3eb</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.3.1 to version 3.4.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.4.0">release notes</a> for more information. [<a href="">#5527</a>]. Notable changes include:
<ul>
<li>Add support for clicking legend titles to toggle visibility of all traces in legend [<a href="">#7698</a>]</li>
<li>Add support for shapes to reference multiple axes [<a href="">#7666</a>]</li>
<li>Add support for dashed marker lines in scatter plots [<a href="">#7673</a>]</li>
<li>Increase axis autorange when bar charts have outside text labels, to avoid labels being clipped [<a href="">#7675</a>]</li>
</ul>
</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/plotly/plotly.py/compare/v6.5.2...v6.6.0">https://github.com/plotly/plotly.py/compare/v6.5.2...v6.6.0</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.6.0] - 2026-03-02</h2>
<h3>Fixed</h3>
<ul>
<li>Remove unneeded <code>type=&quot;text/javascript&quot;</code> attribute from <code>&lt;style&gt;</code> tag [<a href="">#5454</a>], with thanks to <a href="https://github.com/hannob"><code>@​hannob</code></a> for the contribution!</li>
<li>Remove global warning format side effect [<a href="">#5481</a>], with thanks to <a href="https://github.com/emmanuel-ferdman"><code>@​emmanuel-ferdman</code></a> for the contribution!</li>
<li>Fix spurious engine deprecation warning in write_image [<a href="">#5517</a>], with thanks to <a href="https://github.com/mosh3eb"><code>@​mosh3eb</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.3.1 to version 3.4.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.4.0">release notes</a> for more information. [<a href="">#5527</a>]. Notable changes include:
<ul>
<li>Add support for clicking legend titles to toggle visibility of all traces in legend [<a href="">#7698</a>]</li>
<li>Add support for shapes to reference multiple axes [<a href="">#7666</a>]</li>
<li>Add support for dashed marker lines in scatter plots [<a href="">#7673</a>]</li>
<li>Increase axis autorange when bar charts have outside text labels, to avoid labels being clipped [<a href="">#7675</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>837d27e</code></a> changes for v6.6.0</li>
<li><a href=""><code>e0278b3</code></a> update changelog</li>
<li><a href=""><code>bb783da</code></a> Merge pull request <a href="">#5516</a> from plotly/new-charts</li>
<li><a href=""><code>5aabff0</code></a> Merge branch 'main' into new-charts</li>
<li><a href=""><code>03fd2ed</code></a> Merge pull request <a href="">#5527</a> from plotly/update-plotlyjs-3.4.0</li>
<li><a href=""><code>aee4c33</code></a> update changelog</li>
<li><a href=""><code>46a8aa2</code></a> update js artifacts</li>
<li><a href=""><code>7dc360c</code></a> update package-lock</li>
<li><a href=""><code>cf1b9ae</code></a> upgrade plotly.js to v3.4.0</li>
<li><a href=""><code>a4832a8</code></a> Merge branch 'main' into new-charts</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.5.2...v6.6.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.5.2&new-version=6.6.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8072d15293d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.