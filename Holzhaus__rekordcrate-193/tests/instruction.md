# Issue

**Title:** build(deps): bump clap from 4.5.51 to 4.5.52

## Description

Bumps [clap](https://github.com/clap-rs/clap) from 4.5.51 to 4.5.52.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/releases">clap's releases</a>.</em></p>
<blockquote>
<h2>v4.5.52</h2>
<h2>[4.5.52] - 2025-11-17</h2>
<h3>Fixes</h3>
<ul>
<li>Don't panic when <code>args_conflicts_with_subcommands</code> conflicts with an <code>ArgGroup</code></li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/blob/master/CHANGELOG.md">clap's changelog</a>.</em></p>
<blockquote>
<h2>[4.5.52] - 2025-11-17</h2>
<h3>Fixes</h3>
<ul>
<li>Don't panic when <code>args_conflicts_with_subcommands</code> conflicts with an <code>ArgGroup</code></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>783b291</code></a> chore: Release</li>
<li><a href=""><code>a88013a</code></a> docs: Update changelog</li>
<li><a href=""><code>a3c6230</code></a> Merge pull request <a href="">#6000</a> from mernen/fix-zsh-dynamic-completion</li>
<li><a href=""><code>951536e</code></a> chore: Release</li>
<li><a href=""><code>3c527af</code></a> chore: Update transitive clap</li>
<li><a href=""><code>8520a7a</code></a> chore: Release</li>
<li><a href=""><code>2826eed</code></a> chore(nushell): Require newer clap_complete</li>
<li><a href=""><code>c17d25f</code></a> docs: Update changelog</li>
<li><a href=""><code>493a71a</code></a> Merge pull request <a href="">#5999</a> from cenviity/push-tqqzyttsoktu</li>
<li><a href=""><code>c758212</code></a> feat(help): Merge lists of short and long aliases</li>
<li>Additional commits viewable in <a href="https://github.com/clap-rs/clap/compare/clap_complete-v4.5.51...clap_complete-v4.5.52">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=clap&package-manager=cargo&previous-version=4.5.51&new-version=4.5.52)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50cd27bb4c67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.