# Issue

**Title:** build(deps): bump serde from 1.0.218 to 1.0.219

## Description

Bumps [serde](https://github.com/serde-rs/serde) from 1.0.218 to 1.0.219.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/serde/releases">serde's releases</a>.</em></p>
<blockquote>
<h2>v1.0.219</h2>
<ul>
<li>Prevent <code>absolute_paths</code> Clippy restriction being triggered inside macro-generated code (<a href="">#2906</a>, thanks <a href="https://github.com/davidzeng0"><code>@​davidzeng0</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>49d098d</code></a> Release 1.0.219</li>
<li><a href=""><code>40f1d19</code></a> Wrap dummy.rs to 80 columns</li>
<li><a href=""><code>514848b</code></a> Merge pull request <a href="">#2906</a> from davidzeng0/master</li>
<li><a href=""><code>168b6cf</code></a> fix clippy absolute paths warning</li>
<li><a href=""><code>a8bdd17</code></a> Remove unused Punctuated import</li>
<li><a href=""><code>1c96013</code></a> Resolve mem_replace_with_default clippy lint</li>
<li><a href=""><code>f0d1ae0</code></a> Ignore elidable_lifetime_names pedantic clippy lint</li>
<li><a href=""><code>e3eaa6a</code></a> Merge pull request <a href="">#2896</a> from dtolnay/stabledoc</li>
<li><a href=""><code>6a630cf</code></a> Also link to stable proc_macro</li>
<li>See full diff in <a href="https://github.com/serde-rs/serde/compare/v1.0.218...v1.0.219">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde&package-manager=cargo&previous-version=1.0.218&new-version=1.0.219)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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