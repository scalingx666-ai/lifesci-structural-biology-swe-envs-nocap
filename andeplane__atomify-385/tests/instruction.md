# Issue

**Title:** chore(deps): bump pyasn1 from 0.6.3 to 0.6.4 in /backend

## Description

Bumps [pyasn1](https://github.com/pyasn1/pyasn1) from 0.6.3 to 0.6.4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/releases">pyasn1's releases</a>.</em></p>
<blockquote>
<h2>Release 0.6.4</h2>
<p>This is a security release.</p>
<ul>
<li>CVE-2026-59885 (GHSA-8ppf-4f7h-5ppj): Fixed quadratic time complexity in the OBJECT IDENTIFIER and RELATIVE-OID decoders. A small crafted substrate encoding many arcs could consume excessive CPU.</li>
<li>CVE-2026-59884 (GHSA-m4p7-r5rc-7g4j): Limited BER long-form tag IDs to 20 octets (140 bits). Unbounded tag IDs allowed a crafted substrate to consume excessive CPU and memory.</li>
<li>CVE-2026-59886 (GHSA-hm4w-wwcw-mr6r): Fixed excessive memory and CPU consumption in <code>Real.__float__()</code> for values with large base-10 exponents.</li>
<li>Pinned PyPI publish GitHub Action to an immutable commit.</li>
</ul>
<p>All changes are noted in the <a href="https://github.com/pyasn1/pyasn1/blob/main/CHANGES.rst">CHANGELOG</a>.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyasn1/pyasn1/blob/main/CHANGES.rst">pyasn1's changelog</a>.</em></p>
<blockquote>
<h2>Revision 0.6.4, released 08-07-2026</h2>
<ul>
<li>CVE-2026-59885 (GHSA-8ppf-4f7h-5ppj): Fixed quadratic time
complexity in the OBJECT IDENTIFIER and RELATIVE-OID decoders.
A small crafted substrate encoding many arcs could consume
excessive CPU. Arcs are now accumulated in linear time; decoded
values are unchanged (thanks for reporting, tynus2)</li>
<li>CVE-2026-59884 (GHSA-m4p7-r5rc-7g4j): Limited BER long-form tag
IDs to 20 octets (140 bits), matching the OID arc limit introduced
in 0.6.2. Unbounded tag IDs allowed a crafted substrate to consume
excessive CPU and memory; longer tag IDs are now rejected with
PyAsn1Error. Also fixed Tag and TagSet repr() failing on huge tag
(thanks for reporting, mikeappsec)
IDs due to the integer-to-string conversion limit (Python 3.11+)</li>
<li>CVE-2026-59886 (GHSA-hm4w-wwcw-mr6r): Fixed excessive memory and
CPU consumption in Real.<strong>float</strong>() for values with large base-10
exponents. Conversion no longer materializes huge intermediate
integers; values too large to represent as a Python float raise
OverflowError promptly, and prettyPrint() renders them as
'<!-- raw HTML omitted -->' as before. Also fixed base-10 mantissa normalization
to use exact integer arithmetic; mantissas larger than 2**53
could previously lose precision through float division
(thanks for reporting, gvozdila)</li>
<li>Pinned PyPI publish GitHub Action to an immutable commit
[pr <a href="">#113</a>](<a href="">pyasn1/pyasn1#113</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>72e4803</code></a> Prepare release 0.6.4</li>
<li><a href=""><code>0c19eeb</code></a> Pin PyPI publish action to immutable commit (<a href="">#113</a>)</li>
<li><a href=""><code>45bdb19</code></a> Merge commit from fork</li>
<li><a href=""><code>628e36e</code></a> Merge commit from fork</li>
<li><a href=""><code>e60c691</code></a> Merge commit from fork</li>
<li>See full diff in <a href="https://github.com/pyasn1/pyasn1/compare/v0.6.3...v0.6.4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pyasn1&package-manager=uv&previous-version=0.6.3&new-version=0.6.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `846beffa8c70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.