# Issue

**Title:** Bump kaleido from 1.3.0 to 1.4.0

## Description

Bumps [kaleido](https://github.com/plotly/kaleido) from 1.3.0 to 1.4.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/kaleido/releases">kaleido's releases</a>.</em></p>
<blockquote>
<h2>v1.4.0</h2>
<h3>Fixed</h3>
<ul>
<li>Fix <code>TypeError: Type is not JSON serializable: Timestamp</code> when a figure contains datetime-like values such as a <code>pandas</code> <code>Timestamp</code>; these now serialize to ISO strings [<a href="">#461</a>], with thanks to <a href="https://github.com/binggao1230"><code>@​binggao1230</code></a> for the contribution!</li>
<li>Fix <code>orjson</code> serialization of <code>Decimal</code> values [[issue <a href="">#453</a>](<a href=")%5D">plotly/Kaleido#453</a></li>
</ul>
<h3>Changed</h3>
<ul>
<li>Switch default MathJax version from v2 to v3 [<a href="">#469</a>]</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/Kaleido/blob/main/CHANGELOG.md">kaleido's changelog</a>.</em></p>
<blockquote>
<h2>v1.4.0</h2>
<h3>Fixed</h3>
<ul>
<li>Fix <code>TypeError: Type is not JSON serializable: Timestamp</code> when a figure contains datetime-like values such as a <code>pandas</code> <code>Timestamp</code>; these now serialize to ISO strings [<a href="">#461</a>], with thanks to <a href="https://github.com/binggao1230"><code>@​binggao1230</code></a> for the contribution!</li>
<li>Fix <code>orjson</code> serialization of <code>Decimal</code> values [[issue <a href="">#453</a>](<a href=")%5D">plotly/Kaleido#453</a></li>
</ul>
<h3>Changed</h3>
<ul>
<li>Switch default MathJax version from v2 to v3 [<a href="">#469</a>]</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>90be50a</code></a> Merge pull request <a href="">#473</a> from plotly/release-v1.4.0</li>
<li><a href=""><code>0a2a0ab</code></a> use official astral ruff workflow and pin ruff version</li>
<li><a href=""><code>1733e0e</code></a> update changelog for v1.4.0</li>
<li><a href=""><code>aedf5d7</code></a> Merge pull request <a href="">#452</a> from plotly/dependabot/uv/src/py/uv-c30c77f42d</li>
<li><a href=""><code>833baa7</code></a> Merge pull request <a href="">#460</a> from plotly/dependabot/npm_and_yarn/src/js/npm_and_ya...</li>
<li><a href=""><code>73732d4</code></a> Merge pull request <a href="">#469</a> from plotly/default-mathjax-v3</li>
<li><a href=""><code>ae6f856</code></a> Merge branch 'main' into default-mathjax-v3</li>
<li><a href=""><code>cd2c1af</code></a> update changelog</li>
<li><a href=""><code>27219ad</code></a> Merge pull request <a href="">#461</a> from gaoflow/fix-458-datetime-serialization</li>
<li><a href=""><code>f5f6b69</code></a> Update CHANGELOG</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/kaleido/compare/v1.3.0...v1.4.0">compare view</a></li>
</ul>
</details>
<br />

<details>
<summary>Most Recent Ignore Conditions Applied to This Pull Request</summary>

| Dependency Name | Ignore Conditions |
| --- | --- |
| kaleido | [< 0.3, > 0.2.1] |
</details>

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=kaleido&package-manager=pip&previous-version=1.3.0&new-version=1.4.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ac5ee38cfb2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.