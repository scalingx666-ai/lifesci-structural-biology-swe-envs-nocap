# Issue

**Title:** Bump kaleido from 1.0.0 to 1.1.0

## Description

Bumps [kaleido](https://github.com/plotly/kaleido) from 1.0.0 to 1.1.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/kaleido/releases">kaleido's releases</a>.</em></p>
<blockquote>
<p>v1.1.0 fixes various bugs found through improved testing.</p>
<p>Most importantly, it adds to the API an option to start a persistent sync server which speeds up subsequence calls to <code>write_fig_sync</code>, <code>calc_fig_sync</code>, etc.</p>
<p>Use:
<code>kaliedo.start_sync_server()</code> and <code>kaliedo.stop_sync_server()</code></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>992a307</code></a> Update changelog (<a href="">#404</a>)</li>
<li><a href=""><code>fc5486a</code></a> Andrew/test utils (<a href="">#398</a>)</li>
<li><a href=""><code>e0d5907</code></a> Fix to properly validate Path() types</li>
<li><a href=""><code>4f62428</code></a> Test Path() as well as str() in filenotfound tests.</li>
<li><a href=""><code>6563d4f</code></a> Clear up mathjax logic.</li>
<li><a href=""><code>9ed8ee6</code></a> Organize a bit conftest.py</li>
<li><a href=""><code>34cf8cf</code></a> Remove hypo deadlines for slow CI runners.</li>
<li><a href=""><code>2768701</code></a> Tone down unreasonable 20 processor test.</li>
<li><a href=""><code>5189850</code></a> Fix bad logic.</li>
<li><a href=""><code>a71a0ba</code></a> Add yet more logging.</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/kaleido/compare/v1.0.0...v1.1.0">compare view</a></li>
</ul>
</details>
<br />

<details>
<summary>Most Recent Ignore Conditions Applied to This Pull Request</summary>

| Dependency Name | Ignore Conditions |
| --- | --- |
| kaleido | [< 0.3, > 0.2.1] |
</details>

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=kaleido&package-manager=pip&previous-version=1.0.0&new-version=1.1.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c8accf538e78`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.