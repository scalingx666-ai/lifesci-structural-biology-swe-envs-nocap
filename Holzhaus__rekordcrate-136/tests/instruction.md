# Issue

**Title:** build(deps): bump thiserror from 2.0.11 to 2.0.12

## Description

Bumps [thiserror](https://github.com/dtolnay/thiserror) from 2.0.11 to 2.0.12.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/dtolnay/thiserror/releases">thiserror's releases</a>.</em></p>
<blockquote>
<h2>2.0.12</h2>
<ul>
<li>Prevent elidable_lifetime_names pedantic clippy lint in generated impl (<a href="">#413</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>95a5126</code></a> Release 2.0.12</li>
<li><a href=""><code>76490f7</code></a> Merge pull request <a href="">#413</a> from dtolnay/elidablelifetime</li>
<li><a href=""><code>9f27b76</code></a> Ignore elidable_lifetime_names pedantic clippy lint</li>
<li><a href=""><code>daf2a6f</code></a> Resolve some elidable_lifetime_names pedantic clippy lint</li>
<li><a href=""><code>5f07160</code></a> Point standard library links to stable</li>
<li><a href=""><code>6706a51</code></a> Convert html links to intra-doc links</li>
<li><a href=""><code>2706873</code></a> More precise gitignore patterns</li>
<li><a href=""><code>70bc20d</code></a> Remove **/*.rs.bk from project-specific gitignore</li>
<li>See full diff in <a href="https://github.com/dtolnay/thiserror/compare/2.0.11...2.0.12">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=thiserror&package-manager=cargo&previous-version=2.0.11&new-version=2.0.12)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5bc74c38a8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.