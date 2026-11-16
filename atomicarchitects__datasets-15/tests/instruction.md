# Issue

**Title:** Bump tornado from 6.4.2 to 6.5

## Description

Bumps [tornado](https://github.com/tornadoweb/tornado) from 6.4.2 to 6.5.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tornadoweb/tornado/blob/master/docs/releases.rst">tornado's changelog</a>.</em></p>
<blockquote>
<h1>Release notes</h1>
<p>.. toctree::
:maxdepth: 2</p>
<p>releases/v6.5.3
releases/v6.5.2
releases/v6.5.1
releases/v6.5.0
releases/v6.4.2
releases/v6.4.1
releases/v6.4.0
releases/v6.3.3
releases/v6.3.2
releases/v6.3.1
releases/v6.3.0
releases/v6.2.0
releases/v6.1.0
releases/v6.0.4
releases/v6.0.3
releases/v6.0.2
releases/v6.0.1
releases/v6.0.0
releases/v5.1.1
releases/v5.1.0
releases/v5.0.2
releases/v5.0.1
releases/v5.0.0
releases/v4.5.3
releases/v4.5.2
releases/v4.5.1
releases/v4.5.0
releases/v4.4.3
releases/v4.4.2
releases/v4.4.1
releases/v4.4.0
releases/v4.3.0
releases/v4.2.1
releases/v4.2.0
releases/v4.1.0
releases/v4.0.2
releases/v4.0.1
releases/v4.0.0
releases/v3.2.2
releases/v3.2.1
releases/v3.2.0
releases/v3.1.1
releases/v3.1.0
releases/v3.0.2</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ab5f354</code></a> Merge pull request <a href="">#3498</a> from bdarnell/final-6.5</li>
<li><a href=""><code>3623024</code></a> Final release notes for 6.5.0</li>
<li><a href=""><code>b39b892</code></a> Merge pull request <a href="">#3497</a> from bdarnell/multipart-log-spam</li>
<li><a href=""><code>cc61050</code></a> httputil: Raise errors instead of logging in multipart/form-data parsing</li>
<li><a href=""><code>ae4a4e4</code></a> asyncio: Preserve contextvars across SelectorThread on Windows (<a href="">#3479</a>)</li>
<li><a href=""><code>197ff13</code></a> Merge pull request <a href="">#3496</a> from bdarnell/undeprecate-set-event-loop</li>
<li><a href=""><code>c3d906c</code></a> requirements: Upgrade tox to 4.26.0</li>
<li><a href=""><code>a838977</code></a> testing: Remove deprecation warning filter for set_event_loop</li>
<li><a href=""><code>d8e0d36</code></a> build: Fix free-threaded build, mark speedups module as no-GIL</li>
<li><a href=""><code>bfe7489</code></a> Merge pull request <a href="">#3492</a> from bdarnell/relnotes-6.5</li>
<li>Additional commits viewable in <a href="https://github.com/tornadoweb/tornado/compare/v6.4.2...v6.5.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=tornado&package-manager=uv&previous-version=6.4.2&new-version=6.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/atomicarchitects/datasets/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f2f80717c31f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.