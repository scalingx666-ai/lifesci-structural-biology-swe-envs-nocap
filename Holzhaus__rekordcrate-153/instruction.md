# Issue

**Title:** build(deps): bump clap from 4.5.31 to 4.5.38

## Description

Bumps [clap](https://github.com/clap-rs/clap) from 4.5.31 to 4.5.38.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/releases">clap's releases</a>.</em></p>
<blockquote>
<h2>v4.5.38</h2>
<h2>[4.5.38] - 2025-05-11</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> When showing aliases, include leading <code>--</code> or <code>-</code></li>
</ul>
<h2>v4.5.37</h2>
<h2>[4.5.37] - 2025-04-18</h2>
<h3>Features</h3>
<ul>
<li>Added <code>ArgMatches::try_clear_id()</code></li>
</ul>
<h2>v4.5.36</h2>
<h2>[4.5.36] - 2025-04-11</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Revert 4.5.35's &quot;Don't leave space for shorts if there are none&quot; for now</li>
</ul>
<h2>v4.5.35</h2>
<h2>[4.5.35] - 2025-04-01</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Align positionals and flags when put in the same <code>help_heading</code></li>
<li><em>(help)</em> Don't leave space for shorts if there are none</li>
</ul>
<h2>v4.5.34</h2>
<h2>[4.5.34] - 2025-03-27</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Don't add extra blank lines with <code>flatten_help(true)</code> and subcommands without arguments</li>
</ul>
<h2>v4.5.33</h2>
<h2>[4.5.33] - 2025-03-26</h2>
<h3>Fixes</h3>
<ul>
<li><em>(error)</em> When showing the usage of a suggestion for an unknown argument, don't show the group</li>
</ul>
<h2>v4.5.32</h2>
<h2>[4.5.32] - 2025-03-10</h2>
<h3>Features</h3>
<ul>
<li>Add <code>Error::remove</code></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/clap-rs/clap/blob/master/CHANGELOG.md">clap's changelog</a>.</em></p>
<blockquote>
<h2>[4.5.38] - 2025-05-11</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> When showing aliases, include leading <code>--</code> or <code>-</code></li>
</ul>
<h2>[4.5.37] - 2025-04-18</h2>
<h3>Features</h3>
<ul>
<li>Added <code>ArgMatches::try_clear_id()</code></li>
</ul>
<h2>[4.5.36] - 2025-04-11</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Revert 4.5.35's &quot;Don't leave space for shorts if there are none&quot; for now</li>
</ul>
<h2>[4.5.35] - 2025-04-01</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Align positionals and flags when put in the same <code>help_heading</code></li>
<li><em>(help)</em> Don't leave space for shorts if there are none</li>
</ul>
<h2>[4.5.34] - 2025-03-27</h2>
<h3>Fixes</h3>
<ul>
<li><em>(help)</em> Don't add extra blank lines with <code>flatten_help(true)</code> and subcommands without arguments</li>
</ul>
<h2>[4.5.33] - 2025-03-26</h2>
<h3>Fixes</h3>
<ul>
<li><em>(error)</em> When showing the usage of a suggestion for an unknown argument, don't show the group</li>
</ul>
<h2>[4.5.32] - 2025-03-10</h2>
<h3>Features</h3>
<ul>
<li>Add <code>Error::remove</code></li>
</ul>
<h3>Documentation</h3>
<ul>
<li><em>(cookbook)</em> Switch from <code>humantime</code> to <code>jiff</code></li>
<li><em>(tutorial)</em> Better cover required vs optional</li>
</ul>
<h3>Internal</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2920fb0</code></a> chore: Release</li>
<li><a href=""><code>8902627</code></a> docs: Update changelog</li>
<li><a href=""><code>79d696f</code></a> Merge pull request <a href="">#5813</a> from epage/ignore</li>
<li><a href=""><code>479df35</code></a> fix(parser): Fill in defaults on ignored error</li>
<li><a href=""><code>a1d69ca</code></a> refactor(parser): Split up parsing from post-processing</li>
<li><a href=""><code>6827841</code></a> test(parser): Show bad ignore_errors defaulting case</li>
<li><a href=""><code>76d0049</code></a> test(parser): Verify defaulting on errors</li>
<li><a href=""><code>3f5c05c</code></a> test(parser): Ensure we are actually testing ignore_errors</li>
<li><a href=""><code>ba4745d</code></a> chore(ci): Fix use of permissions</li>
<li><a href=""><code>22944b4</code></a> chore(ci): Use matrix for tracking the runner</li>
<li>Additional commits viewable in <a href="https://github.com/clap-rs/clap/compare/v4.5.31...clap_complete-v4.5.38">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=clap&package-manager=cargo&previous-version=4.5.31&new-version=4.5.38)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5bc74c38a8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.