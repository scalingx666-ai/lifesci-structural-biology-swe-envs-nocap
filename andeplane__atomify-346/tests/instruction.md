# Issue

**Title:** chore(deps): bump python-dotenv from 1.2.1 to 1.2.2 in /backend

## Description

Bumps [python-dotenv](https://github.com/theskumar/python-dotenv) from 1.2.1 to 1.2.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/theskumar/python-dotenv/releases">python-dotenv's releases</a>.</em></p>
<blockquote>
<h2>v1.2.2</h2>
<h3>Added</h3>
<ul>
<li>Support for Python 3.14, including the free-threaded (3.14t) build. (#)</li>
</ul>
<h3>Changed</h3>
<ul>
<li>The <code>dotenv run</code> command now forwards flags directly to the specified command by <a href="https://github.com/bbc2"><code>@​bbc2</code></a> in <a href="">theskumar/python-dotenv#607</a></li>
<li>Improved documentation clarity regarding override behavior and the reference page.</li>
<li>Updated PyPy support to version 3.11.</li>
<li>Documentation for FIFO file support.</li>
<li>Support for Python 3.9.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Improved <code>set_key</code> and <code>unset_key</code> behavior when interacting with symlinks by <a href="https://github.com/bbc2"><code>@​bbc2</code></a> in <a href="">#790c5</a></li>
<li>Corrected the license specifier and added missing Python 3.14 classifiers in package metadata by <a href="https://github.com/JYOuyang"><code>@​JYOuyang</code></a> in <a href="">theskumar/python-dotenv#590</a></li>
</ul>
<h3>Breaking Changes</h3>
<ul>
<li>
<p><code>dotenv.set_key</code> and <code>dotenv.unset_key</code> used to follow symlinks in some
situations. This is no longer the case. For that behavior to be restored in
all cases, <code>follow_symlinks=True</code> should be used.</p>
</li>
<li>
<p>In the CLI, <code>set</code> and <code>unset</code> used to follow symlinks in some situations. This
is no longer the case.</p>
</li>
<li>
<p><code>dotenv.set_key</code>, <code>dotenv.unset_key</code> and the CLI commands <code>set</code> and <code>unset</code>
used to reset the file mode of the modified .env file to <code>0o600</code> in some
situations. This is no longer the case: The original mode of the file is now
preserved. Is the file needed to be created or wasn't a regular file, mode
<code>0o600</code> is used.</p>
</li>
</ul>
<h3>Misc</h3>
<ul>
<li>skip 000 permission tests for root user by <a href="https://github.com/burnout-projects"><code>@​burnout-projects</code></a> in <a href="">theskumar/python-dotenv#561</a></li>
<li>Bump actions/checkout from 5 to 6 in the github-actions group by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">theskumar/python-dotenv#593</a></li>
<li>Add Windows testing to CI by <a href="https://github.com/bbc2"><code>@​bbc2</code></a> in <a href="">theskumar/python-dotenv#604</a></li>
<li>Improve workflow efficiency with best practices by <a href="https://github.com/theskumar"><code>@​theskumar</code></a> in <a href="">theskumar/python-dotenv#609</a></li>
<li>Remove the use of <code>sh</code> in tests by <a href="https://github.com/bbc2"><code>@​bbc2</code></a> in <a href="">theskumar/python-dotenv#612</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/JYOuyang"><code>@​JYOuyang</code></a> made their first contribution in <a href="">theskumar/python-dotenv#590</a></li>
<li><a href="https://github.com/burnout-projects"><code>@​burnout-projects</code></a> made their first contribution in <a href="">theskumar/python-dotenv#561</a></li>
<li><a href="https://github.com/cpackham-atlnz"><code>@​cpackham-atlnz</code></a> made their first contribution in <a href="">theskumar/python-dotenv#597</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/theskumar/python-dotenv/compare/v1.2.1...v1.2.2">https://github.com/theskumar/python-dotenv/compare/v1.2.1...v1.2.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/theskumar/python-dotenv/blob/main/CHANGELOG.md">python-dotenv's changelog</a>.</em></p>
<blockquote>
<h2>[1.2.2] - 2026-03-01</h2>
<h3>Added</h3>
<ul>
<li>Support for Python 3.14, including the free-threaded (3.14t) build. (<a href="">#588</a>)</li>
</ul>
<h3>Changed</h3>
<ul>
<li>The <code>dotenv run</code> command now forwards flags directly to the specified command by [<a href="https://github.com/bbc2"><code>@​bbc2</code></a>] in <a href="">#607</a></li>
<li>Improved documentation clarity regarding override behavior and the reference page.</li>
<li>Updated PyPy support to version 3.11.</li>
<li>Documentation for FIFO file support.</li>
<li>Dropped Support for Python 3.9.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Improved <code>set_key</code> and <code>unset_key</code> behavior when interacting with symlinks by [<a href="https://github.com/bbc2"><code>@​bbc2</code></a>] in [790c5c0]</li>
<li>Corrected the license specifier and added missing Python 3.14 classifiers in package metadata by [<a href="https://github.com/JYOuyang"><code>@​JYOuyang</code></a>] in <a href="">#590</a></li>
</ul>
<h3>Breaking Changes</h3>
<ul>
<li>
<p><code>dotenv.set_key</code> and <code>dotenv.unset_key</code> used to follow symlinks in some
situations. This is no longer the case. For that behavior to be restored in
all cases, <code>follow_symlinks=True</code> should be used.</p>
</li>
<li>
<p>In the CLI, <code>set</code> and <code>unset</code> used to follow symlinks in some situations. This
is no longer the case.</p>
</li>
<li>
<p><code>dotenv.set_key</code>, <code>dotenv.unset_key</code> and the CLI commands <code>set</code> and <code>unset</code>
used to reset the file mode of the modified .env file to <code>0o600</code> in some
situations. This is no longer the case: The original mode of the file is now
preserved. Is the file needed to be created or wasn't a regular file, mode
<code>0o600</code> is used.</p>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>36004e0</code></a> Bump version: 1.2.1 → 1.2.2</li>
<li><a href=""><code>eb20252</code></a> docs: update changelog for v1.2.2</li>
<li><a href=""><code>790c5c0</code></a> Merge commit from fork</li>
<li><a href=""><code>43340da</code></a> Remove the use of <code>sh</code> in tests (<a href="">#612</a>)</li>
<li><a href=""><code>09d7cee</code></a> docs: clarify override behavior and document FIFO support (<a href="">#610</a>)</li>
<li><a href=""><code>c8de288</code></a> ci: improve workflow efficiency with best practices (<a href="">#609</a>)</li>
<li><a href=""><code>7bd9e3d</code></a> Add Windows testing to CI (<a href="">#604</a>)</li>
<li><a href=""><code>1baaf04</code></a> Drop Python 3.9 support and update to PyPy 3.11 (<a href="">#608</a>)</li>
<li><a href=""><code>4a22cf8</code></a> ci: enable testing on Python 3.14t (free-threaded) (<a href="">#588</a>)</li>
<li><a href=""><code>e2e8e77</code></a> Fix license specifier (<a href="">#597</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/theskumar/python-dotenv/compare/v1.2.1...v1.2.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=python-dotenv&package-manager=uv&previous-version=1.2.1&new-version=1.2.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.