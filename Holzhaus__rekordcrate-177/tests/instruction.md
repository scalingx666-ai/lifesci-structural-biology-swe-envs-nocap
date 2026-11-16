# Issue

**Title:** build(deps): bump thiserror from 2.0.16 to 2.0.17

## Description

Bumps [thiserror](https://github.com/dtolnay/thiserror) from 2.0.16 to 2.0.17.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/dtolnay/thiserror/releases">thiserror's releases</a>.</em></p>
<blockquote>
<h2>2.0.17</h2>
<ul>
<li>Use differently named __private module per patch release (<a href="">#434</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>72ae716</code></a> Release 2.0.17</li>
<li><a href=""><code>599fdce</code></a> Merge pull request <a href="">#434</a> from dtolnay/private</li>
<li><a href=""><code>9ec05f6</code></a> Use differently named __private module per patch release</li>
<li><a href=""><code>d2c492b</code></a> Raise minimum tested compiler to rust 1.76</li>
<li><a href=""><code>fc3ab95</code></a> Opt in to generate-macro-expansion when building on docs.rs</li>
<li><a href=""><code>819fe29</code></a> Update ui test suite to nightly-2025-09-12</li>
<li><a href=""><code>259f48c</code></a> Enforce trybuild &gt;= 1.0.108</li>
<li><a href=""><code>470e6a6</code></a> Update ui test suite to nightly-2025-08-24</li>
<li><a href=""><code>544e191</code></a> Update actions/checkout@v4 -&gt; v5</li>
<li><a href=""><code>cbc1eba</code></a> Delete duplicate cap-lints flag from build script</li>
<li>See full diff in <a href="https://github.com/dtolnay/thiserror/compare/2.0.16...2.0.17">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=thiserror&package-manager=cargo&previous-version=2.0.16&new-version=2.0.17)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `256891424396`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.