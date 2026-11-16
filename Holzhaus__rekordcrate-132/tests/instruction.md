# Issue

**Title:** build(deps): bump clap from 4.5.28 to 4.5.30

## Description

Bumps [clap](https://github.com/clap-rs/clap) from 4.5.28 to 4.5.30.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/releases">clap's releases</a>.</em></p>
<blockquote>
<h2>v4.5.30</h2>
<h2>[4.5.30] - 2025-02-17</h2>
<h3>Fixes</h3>
<ul>
<li><em>(assert)</em> Allow <code>num_args(0..=1)</code> to be used with <code>SetTrue</code></li>
<li><em>(assert)</em> Clean up rendering of <code>takes_values</code> assertions</li>
</ul>
<h2>v4.5.29</h2>
<h2>[4.5.29] - 2025-02-11</h2>
<h3>Fixes</h3>
<ul>
<li>Change <code>ArgMatches::args_present</code> so not-present flags are considered not-present (matching the documentation)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/blob/master/CHANGELOG.md">clap's changelog</a>.</em></p>
<blockquote>
<h2>[4.5.30] - 2025-02-17</h2>
<h3>Fixes</h3>
<ul>
<li><em>(assert)</em> Allow <code>num_args(0..=1)</code> to be used with <code>SetTrue</code></li>
<li><em>(assert)</em> Clean up rendering of <code>takes_values</code> assertions</li>
</ul>
<h2>[4.5.29] - 2025-02-11</h2>
<h3>Fixes</h3>
<ul>
<li>Change <code>ArgMatches::args_present</code> so not-present flags are considered not-present (matching the documentation)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f40b37f</code></a> chore: Release</li>
<li><a href=""><code>63bfe1a</code></a> docs: Update changelog</li>
<li><a href=""><code>d6bd7e2</code></a> Merge pull request <a href="">#5763</a> from epage/complete</li>
<li><a href=""><code>0887593</code></a> fix(complete): Change ValueHint::Unknown to Other, from AnyPath</li>
<li><a href=""><code>61ebe72</code></a> chore: Release</li>
<li><a href=""><code>2e3fcc6</code></a> docs: Update changelog</li>
<li><a href=""><code>13dad4c</code></a> Merge pull request <a href="">#5759</a> from clap-rs/renovate/unicode-width-0.x</li>
<li><a href=""><code>3ca44c7</code></a> Merge pull request <a href="">#5758</a> from clap-rs/renovate/terminal_size-0.x</li>
<li><a href=""><code>d71ae66</code></a> Merge pull request <a href="">#5760</a> from clap-rs/renovate/stable-1.x</li>
<li><a href=""><code>a25c734</code></a> chore(deps): Update dependency STABLE to v1.81.0</li>
<li>Additional commits viewable in <a href="https://github.com/clap-rs/clap/compare/clap_complete-v4.5.28...clap_complete-v4.5.30">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=clap&package-manager=cargo&previous-version=4.5.28&new-version=4.5.30)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `31b2cfccc6d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.