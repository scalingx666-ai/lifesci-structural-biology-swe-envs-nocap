# Issue

**Title:** Bump tornado from 6.6 to 6.6.1

## Description

Bumps [tornado](https://github.com/tornadoweb/tornado) from 6.6 to 6.6.1.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tornadoweb/tornado/blob/master/docs/releases.rst">tornado's changelog</a>.</em></p>
<blockquote>
<h1>Release notes</h1>
<p>.. toctree::
:maxdepth: 2</p>
<p>releases/v6.6.1
releases/v6.6.0
releases/v6.5.10
releases/v6.5.9
releases/v6.5.8
releases/v6.5.7
releases/v6.5.6
releases/v6.5.5
releases/v6.5.4
releases/v6.5.3
releases/v6.5.2
releases/v6.5.1
releases/v6.5.0
releases/v6.4.2
releases/v6.4.1
releases/v6.4.0
releases/v6.3.3
releases/v6.3.2
releases/v6.3.1
releases/v6.3.0
releases/v6.2.0
releases/v6.1.0
releases/v6.0.4
releases/v6.0.3
releases/v6.0.2
releases/v6.0.1
releases/v6.0.0
releases/v5.1.1
releases/v5.1.0
releases/v5.0.2
releases/v5.0.1
releases/v5.0.0
releases/v4.5.3
releases/v4.5.2
releases/v4.5.1
releases/v4.5.0
releases/v4.4.3
releases/v4.4.2
releases/v4.4.1
releases/v4.4.0
releases/v4.3.0
releases/v4.2.1
releases/v4.2.0
releases/v4.1.0</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>c1adc39</code></a> docs: Fill in release date</li>
<li><a href=""><code>25c37dd</code></a> Merge pull request <a href="">#3876</a> from bdarnell/fixes-661</li>
<li><a href=""><code>cc22b66</code></a> Version bump for 6.6.1</li>
<li><a href=""><code>eb44b95</code></a> Release notes for Tornado 6.6.1</li>
<li><a href=""><code>1427d8e</code></a> test: Fix flaky cookie unquoting linear-performance test on PyPy</li>
<li><a href=""><code>a4dd782</code></a> httputil: Adjust schedule for removal of LF-only line endings</li>
<li><a href=""><code>d0c945a</code></a> web: Reject NTFS alternate data streams in StaticFileHandler</li>
<li><a href=""><code>7e841ab</code></a> http1connection: Only allow HTTP whitespace in Content-Length lists</li>
<li><a href=""><code>21e1ad0</code></a> web: Don't let addslash and removeslash redirect to another host</li>
<li><a href=""><code>c503241</code></a> web: Fix RedirectHandler open redirect with three or more leading slashes</li>
<li>Additional commits viewable in <a href="https://github.com/tornadoweb/tornado/compare/v6.6.0...v6.6.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=tornado&package-manager=uv&previous-version=6.6&new-version=6.6.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/a-r-j/graphein/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `25ffd79cea69`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.