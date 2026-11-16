# Issue

**Title:** Bump lxml from 5.4.0 to 6.1.0

## Description

Bumps [lxml](https://github.com/lxml/lxml) from 5.4.0 to 6.1.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/lxml/lxml/blob/master/CHANGES.txt">lxml's changelog</a>.</em></p>
<blockquote>
<h1>6.1.0 (2026-04-17)</h1>
<p>This release fixes a possible external entity injection (XXE) vulnerability in
<code>iterparse()</code> and the <code>ETCompatXMLParser</code>.</p>
<h2>Features added</h2>
<ul>
<li>
<p>GH#486: The HTML ARIA accessibility attributes were added to the set of safe attributes
in <code>lxml.html.defs</code>.  This allows <code>lxml_html_clean</code> to pass them through.
Patch by oomsveta.</p>
</li>
<li>
<p>The default chunk size for reading from file-likes in <code>iterparse()</code> is now configurable
with a new <code>chunk_size</code> argument.</p>
</li>
</ul>
<h2>Bugs fixed</h2>
<ul>
<li>LP#2146291: The <code>resolve_entities</code> option was still set to <code>True</code> for
<code>iterparse</code> and <code>ETCompatXMLParser</code>, allowing for external entity injection (XXE)
when using these parsers without setting this option explicitly.
The default was now changed to <code>'internal'</code> only (as for the normal XML and HTML parsers
since lxml 5.0).
Issue found by Sihao Qiu as CVE-2026-41066.</li>
</ul>
<h1>6.0.4 (2026-04-12)</h1>
<h2>Bugs fixed</h2>
<ul>
<li>LP#2148019: Spurious MemoryError during namespace cleanup.</li>
</ul>
<h1>6.0.3 (2026-04-09)</h1>
<h2>Bugs fixed</h2>
<ul>
<li>
<p>Several out of memory error cases now raise <code>MemoryError</code> that were not handled before.</p>
</li>
<li>
<p>Slicing with large step values (outside of <code>+/- sys.maxsize</code>) could trigger undefined C behaviour.</p>
</li>
<li>
<p>LP#2125399: Some failing tests were fixed or disabled in PyPy.</p>
</li>
<li>
<p>LP#2138421: Memory leak in error cases when setting the <code>public_id</code> or <code>system_url</code> of a document.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>43722f4</code></a> Update changelog.</li>
<li><a href=""><code>8747040</code></a> Name version of option change in docstring.</li>
<li><a href=""><code>6c36e6c</code></a> Fix pypistats URL in download statistics script.</li>
<li><a href=""><code>c7d76d6</code></a> Change security policy to point to Github security advisories.</li>
<li><a href=""><code>378ccf8</code></a> Update project income report.</li>
<li><a href=""><code>315270b</code></a> Docs: Reduce TOC depth of package pages and move module contents first.</li>
<li><a href=""><code>6dbba7f</code></a> Docs: Show current year in copyright line.</li>
<li><a href=""><code>e4385bf</code></a> Update project income report.</li>
<li><a href=""><code>5bed1e1</code></a> Validate file hashes in release download script.</li>
<li><a href=""><code>c13ee10</code></a> Prepare release of 6.1.0.</li>
<li>Additional commits viewable in <a href="https://github.com/lxml/lxml/compare/lxml-5.4.0...lxml-6.1.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=lxml&package-manager=uv&previous-version=5.4.0&new-version=6.1.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `26558d62ca56`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.