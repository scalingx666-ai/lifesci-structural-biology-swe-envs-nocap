# Issue

**Title:** build(deps): bump pre-commit/action from 2.0.0 to 3.0.1

## Description

[//]: # (dependabot-start)
⚠️  **Dependabot is rebasing this PR** ⚠️

Rebasing might not happen immediately, so don't worry if this takes some time.

Note: if you make any changes to this PR yourself, they will take precedence over the rebase.

---

[//]: # (dependabot-end)

Bumps [pre-commit/action](https://github.com/pre-commit/action) from 2.0.0 to 3.0.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pre-commit/action/releases">pre-commit/action's releases</a>.</em></p>
<blockquote>
<h2>pre-commit/action@v3.0.1</h2>
<h3>Misc</h3>
<ul>
<li>Update actions/cache to v4
<ul>
<li><a href="">#190</a> PR by <a href="https://github.com/SukiCZ"><code>@​SukiCZ</code></a>.</li>
<li><a href="">#189</a> issue by <a href="https://github.com/bakerkj"><code>@​bakerkj</code></a>.</li>
</ul>
</li>
</ul>
<h2>pre-commit/action@v3.0.0</h2>
<h3>Breaking</h3>
<ul>
<li>remove pushing behaviour.
<ul>
<li>PR <a href="">#164</a> by <a href="https://github.com/asottile"><code>@​asottile</code></a>.</li>
</ul>
</li>
</ul>
<p>see <a href="https://github.com/pre-commit/action#using-this-action-in-private-repositories">README</a> for alternatives</p>
<h2>pre-commit/action@v2.0.3</h2>
<h3>Fixes</h3>
<ul>
<li><code>push</code> compatibility with <code>actions/checkout@v2</code> which checks out the branch
<ul>
<li><a href="">#97</a> PR by <a href="https://github.com/jackton1"><code>@​jackton1</code></a>.</li>
</ul>
</li>
</ul>
<h2>pre-commit/action@v2.0.2</h2>
<p>retag of 2.0.1 but on the proper branch</p>
<h2>pre-commit/action@v2.0.1</h2>
<h3>Fixes</h3>
<ul>
<li>Avoid failures if cache saving fails
<ul>
<li><a href="">#54</a> PR by <a href="https://github.com/s-weigand"><code>@​s-weigand</code></a></li>
<li><a href="">#53</a> issue by <a href="https://github.com/s-weigand"><code>@​s-weigand</code></a></li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2c7b380</code></a> v3.0.1</li>
<li><a href=""><code>8e2deeb</code></a> Merge pull request <a href="">#190</a> from SukiCZ/upgrade-action/cache-v4</li>
<li><a href=""><code>0dbc303</code></a> Upgrade action/cache to v4. Fixes: <a href="">#189</a></li>
<li><a href=""><code>c7d159c</code></a> Merge pull request <a href="">#185</a> from pre-commit/asottile-patch-1</li>
<li><a href=""><code>9dd4237</code></a> fix main badge</li>
<li><a href=""><code>37faf8a</code></a> Merge pull request <a href="">#184</a> from pre-commit/pre-commit-ci-update-config</li>
<li><a href=""><code>049686e</code></a> [pre-commit.ci] pre-commit autoupdate</li>
<li><a href=""><code>5f528da</code></a> move back to maintenance-only</li>
<li><a href=""><code>efd3bcf</code></a> Merge pull request <a href="">#170</a> from pre-commit/pre-commit-ci-update-config</li>
<li><a href=""><code>df308c7</code></a> [pre-commit.ci] pre-commit autoupdate</li>
<li>Additional commits viewable in <a href="https://github.com/pre-commit/action/compare/v2.0.0...v3.0.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pre-commit/action&package-manager=github_actions&previous-version=2.0.0&new-version=3.0.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `65a96e44deac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.