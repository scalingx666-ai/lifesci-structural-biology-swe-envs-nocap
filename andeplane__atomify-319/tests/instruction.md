# Issue

**Title:** chore(deps): bump pyasn1 from 0.6.2 to 0.6.3 in /backend

## Description

Bumps [pyasn1](https://github.com/pyasn1/pyasn1) from 0.6.2 to 0.6.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/releases">pyasn1's releases</a>.</em></p>
<blockquote>
<h2>Release 0.6.3</h2>
<p>It's a minor release.</p>
<ul>
<li>Added nesting depth limit to ASN.1 decoder to prevent stack overflow from deeply nested structures (CVE-2026-30922).</li>
<li>Fixed OverflowError from oversized BER length field.</li>
<li>Fixed DeprecationWarning stacklevel for deprecated attributes.</li>
<li>Fixed asDateTime incorrect fractional seconds parsing.</li>
</ul>
<p>All changes are noted in the <a href="https://github.com/pyasn1/pyasn1/blob/master/CHANGES.rst">CHANGELOG</a>.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/blob/main/CHANGES.rst">pyasn1's changelog</a>.</em></p>
<blockquote>
<h2>Revision 0.6.3, released 16-03-2026</h2>
<ul>
<li>CVE-2026-30922 (GHSA-jr27-m4p2-rc6r): Added nesting depth
limit to ASN.1 decoder to prevent stack overflow from deeply
nested structures (thanks for reporting, romanticpragmatism)</li>
<li>Fixed OverflowError from oversized BER length field
[issue <a href="">#54</a>](<a href="">pyasn1/pyasn1#54</a>)
[pr <a href="">#100</a>](<a href="">pyasn1/pyasn1#100</a>)</li>
<li>Fixed DeprecationWarning stacklevel for deprecated attributes
[issue <a href="">#86</a>](<a href="">pyasn1/pyasn1#86</a>)
[pr <a href="">#101</a>](<a href="">pyasn1/pyasn1#101</a>)</li>
<li>Fixed asDateTime incorrect fractional seconds parsing
[issue <a href="">#81</a>](<a href="">pyasn1/pyasn1#81</a>)
[pr <a href="">#102</a>](<a href="">pyasn1/pyasn1#102</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>af65c3b</code></a> Prepare release 0.6.3</li>
<li><a href=""><code>5a49bd1</code></a> Merge commit from fork</li>
<li><a href=""><code>5494ba4</code></a> Fix asDateTime incorrect fractional seconds parsing (<a href="">#102</a>)</li>
<li><a href=""><code>71f486e</code></a> Fix DeprecationWarning stacklevel for deprecated attributes (<a href="">#101</a>)</li>
<li><a href=""><code>d7cb42d</code></a> Fix OverflowError from oversized BER length field (<a href="">#100</a>)</li>
<li>See full diff in <a href="https://github.com/pyasn1/pyasn1/compare/v0.6.2...v0.6.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pyasn1&package-manager=uv&previous-version=0.6.2&new-version=0.6.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9adc239323c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.