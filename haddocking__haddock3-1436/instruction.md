# Issue

**Title:** Bump pytest-cov from 6.2.1 to 7.0.0

## Description

Bumps [pytest-cov](https://github.com/pytest-dev/pytest-cov) from 6.2.1 to 7.0.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest-cov/blob/master/CHANGELOG.rst">pytest-cov's changelog</a>.</em></p>
<blockquote>
<h2>7.0.0 (2025-09-09)</h2>
<ul>
<li>
<p>Dropped support for subprocesses measurement.</p>
<p>It was a feature added long time ago when coverage lacked a nice way to measure subprocesses created in tests.
It relied on a <code>.pth</code> file, there was no way to opt-out and it created bad interations
with <code>coverage's new patch system &lt;https://coverage.readthedocs.io/en/latest/config.html#run-patch&gt;</code>_ added
in <code>7.10 &lt;https://coverage.readthedocs.io/en/7.10.6/changes.html#version-7-10-0-2025-07-24&gt;</code>_.</p>
<p>To migrate to this release you might need to enable the suprocess patch, example for <code>.coveragerc</code>:</p>
<p>.. code-block:: ini</p>
<p>[run]
patch = subprocess</p>
<p>This release also requires at least coverage 7.10.6.</p>
</li>
<li>
<p>Switched packaging to have metadata completely in <code>pyproject.toml</code> and use <code>hatchling &lt;https://pypi.org/project/hatchling/&gt;</code>_ for
building.
Contributed by Ofek Lev in <code> &lt;</code>_
with some extras in <code> &lt;</code>_.</p>
</li>
<li>
<p>Removed some not really necessary testing deps like <code>six</code>.</p>
</li>
</ul>
<h2>6.3.0 (2025-09-06)</h2>
<ul>
<li>Added support for markdown reports.
Contributed by Marcos Boger in <code> &lt;</code>_
and <code> &lt;</code>_.</li>
<li>Fixed some formatting issues in docs.
Anonymous contribution in <code> &lt;</code>_.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>224d896</code></a> Bump version: 6.3.0 → 7.0.0</li>
<li><a href=""><code>73424e3</code></a> Cleanup the docs a bit.</li>
<li><a href=""><code>36f1cc2</code></a> Bump pins in template.</li>
<li><a href=""><code>f299c59</code></a> Bump the github-actions group with 2 updates</li>
<li><a href=""><code>25f0b2e</code></a> Update docs/config.rst</li>
<li><a href=""><code>bb23eac</code></a> Improve configuration docs</li>
<li><a href=""><code>a19531e</code></a> Switch from build/pre-commit to uv/prek - this should make this faster.</li>
<li><a href=""><code>82f9993</code></a> Update changelog.</li>
<li><a href=""><code>211b5cd</code></a> Fix links.</li>
<li><a href=""><code>97aadd7</code></a> Update some ci config, reformat and apply some lint fixes.</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest-cov/compare/v6.2.1...v7.0.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pytest-cov&package-manager=pip&previous-version=6.2.1&new-version=7.0.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b4c725e6acde`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.