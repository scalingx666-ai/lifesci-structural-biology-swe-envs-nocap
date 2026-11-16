# Issue

**Title:** Bump coverage from 7.10.6 to 7.10.7

## Description

Bumps [coverage](https://github.com/nedbat/coveragepy) from 7.10.6 to 7.10.7.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/nedbat/coveragepy/blob/master/CHANGES.rst">coverage's changelog</a>.</em></p>
<blockquote>
<h2>Version 7.10.7 — 2025-09-21</h2>
<ul>
<li>
<p>Performance: with branch coverage in large files, generating HTML, JSON, or
LCOV reports could take far too long due to some quadratic behavior when
creating the function and class index pages.  This is now fixed, closing
<code>issue 2048</code>_.  Thanks to Daniel Diniz for help diagnosing the problem.</p>
</li>
<li>
<p>Most warnings and a few errors now have links to a page in the docs
explaining the specific message.  Closes <code>issue 1921</code>_.</p>
</li>
</ul>
<p>.. _issue 1921: <a href="">nedbat/coveragepy#1921</a>
.. _issue 2048: <a href="">nedbat/coveragepy#2048</a></p>
<p>.. _changes_7-10-6:</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>92a2af5</code></a> docs: sample HTML for 7.10.7</li>
<li><a href=""><code>952afda</code></a> docs: prep for 7.10.7</li>
<li><a href=""><code>a301761</code></a> build: riscv64 wheels (<a href="">#2055</a>)</li>
<li><a href=""><code>5daff8d</code></a> docs: now source is formatted with ruff</li>
<li><a href=""><code>04bbc3a</code></a> docs: discuss cog in the contributing docs</li>
<li><a href=""><code>c181b93</code></a> build: use cog --check-fail-msg to instruct devs</li>
<li><a href=""><code>33c4ba1</code></a> chore: make upgrade</li>
<li><a href=""><code>0744b73</code></a> chore: bump the action-dependencies group across 1 directory with 2 updates (...</li>
<li><a href=""><code>0d5a112</code></a> perf: bulk narrowing to avoid N**2. <a href="">#2048</a></li>
<li><a href=""><code>a868ed9</code></a> docs: mention Python Discord on the index page</li>
<li>Additional commits viewable in <a href="https://github.com/nedbat/coveragepy/compare/7.10.6...7.10.7">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=coverage&package-manager=pip&previous-version=7.10.6&new-version=7.10.7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c1fc0fef778`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.