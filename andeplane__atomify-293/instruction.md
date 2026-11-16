# Issue

**Title:** chore(deps): bump pyasn1 from 0.6.1 to 0.6.2 in /backend

## Description

Bumps [pyasn1](https://github.com/pyasn1/pyasn1) from 0.6.1 to 0.6.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/releases">pyasn1's releases</a>.</em></p>
<blockquote>
<h2>Release 0.6.2</h2>
<p>It's a minor release.</p>
<ul>
<li>Fixed continuation octet limits in OID/RELATIVE-OID decoder (CVE-2026-23490).</li>
<li>Added support for Python 3.14.</li>
<li>Added SECURITY.md policy.</li>
<li>Migrated to pyproject.toml packaging.</li>
</ul>
<p>All changes are noted in the <a href="https://github.com/pyasn1/pyasn1/blob/master/CHANGES.rst">CHANGELOG</a>.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/blob/main/CHANGES.rst">pyasn1's changelog</a>.</em></p>
<blockquote>
<h2>Revision 0.6.2, released 16-01-2026</h2>
<ul>
<li>CVE-2026-23490 (GHSA-63vm-454h-vhhq): Fixed continuation octet limits
in OID/RELATIVE-OID decoder (thanks to tsigouris007)</li>
<li>Added support for Python 3.14
[pr <a href="">#97</a>](<a href="">pyasn1/pyasn1#97</a>)</li>
<li>Added SECURITY.md policy</li>
<li>Fixed unit tests failing due to missing code
[issue <a href="">#91</a>](<a href="">pyasn1/pyasn1#91</a>)
[pr <a href="">#92</a>](<a href="">pyasn1/pyasn1#92</a>)</li>
<li>Migrated to pyproject.toml packaging
[pr <a href="">#90</a>](<a href="">pyasn1/pyasn1#90</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>e7356f8</code></a> Prepare release 0.6.2</li>
<li><a href=""><code>3908f14</code></a> Merge commit from fork</li>
<li><a href=""><code>0a7e067</code></a> Add support for Python 3.14 (<a href="">#97</a>)</li>
<li><a href=""><code>33656e9</code></a> Create Security Policy</li>
<li><a href=""><code>fa62307</code></a> fix for issue <a href="">#91</a>: unit tests failing due to missing code (<a href="">#92</a>)</li>
<li><a href=""><code>f1ed02e</code></a> Package pyasn1 with pyproject.toml (<a href="">#90</a>)</li>
<li><a href=""><code>93c4d4f</code></a> Switch documentation user to pyasn1 (<a href="">#89</a>)</li>
<li>See full diff in <a href="https://github.com/pyasn1/pyasn1/compare/v0.6.1...v0.6.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pyasn1&package-manager=uv&previous-version=0.6.1&new-version=0.6.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e6d7f01f623`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.