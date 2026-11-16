# Issue

**Title:** build(deps): bump quick-xml from 0.38.1 to 0.38.3

## Description

Bumps [quick-xml](https://github.com/tafia/quick-xml) from 0.38.1 to 0.38.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/releases">quick-xml's releases</a>.</em></p>
<blockquote>
<h2>v0.38.3 - Fix EOL normalization in some cases</h2>
<h2>What's Changed</h2>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#895</a>: Fix incorrect normalization of <code>\rX</code> EOL sequences where <code>X</code> is a char which is UTF-8 encoded as [c2 xx], except [c2 85].</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#895</a>: Add new <code>xml10_content()</code> and <code>xml11_content()</code> methods which behaves the same as <code>html_content()</code> and <code>xml_content()</code> methods, but express intention more clearly.</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.38.2...v0.38.3">https://github.com/tafia/quick-xml/compare/v0.38.2...v0.38.3</a></p>
<h2>v0.38.2 - Make NamespaceResolver public</h2>
<h2>What's Changed</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#893</a>: Implement <code>FusedIterator</code> for <code>NamespaceBindingsIter</code>.</li>
<li><a href="">#893</a>: Make <code>NamespaceResolver</code> public.</li>
<li><a href="">#893</a>: Add <code>NsReader::resolver()</code> for access to namespace resolver.</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#893</a>: Rename <code>PrefixIter</code> to <code>NamespaceBindingsIter</code>.</li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/decathorpe"><code>@​decathorpe</code></a> made their first contribution in <a href="">tafia/quick-xml#891</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.38.1...v0.38.2">https://github.com/tafia/quick-xml/compare/v0.38.1...v0.38.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/blob/master/Changelog.md">quick-xml's changelog</a>.</em></p>
<blockquote>
<h2>0.38.3 -- 2025-08-24</h2>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#895</a>: Fix incorrect normalization of <code>\rX</code> EOL sequences where <code>X</code> is a char which is
UTF-8 encoded as [c2 xx], except [c2 85].</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#895</a>: Add new <code>xml10_content()</code> and <code>xml11_content()</code> methods which behaves the same as
<code>html_content()</code> and <code>xml_content()</code> methods, but express intention more clearly.</li>
</ul>
<p><a href="">#895</a>: <a href="">tafia/quick-xml#895</a></p>
<h2>0.38.2 -- 2025-08-19</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#893</a>: Implement <code>FusedIterator</code> for <code>NamespaceBindingsIter</code>.</li>
<li><a href="">#893</a>: Make <code>NamespaceResolver</code> public.</li>
<li><a href="">#893</a>: Add <code>NsReader::resolver()</code> for access to namespace resolver.</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#893</a>: Rename <code>PrefixIter</code> to <code>NamespaceBindingsIter</code>.</li>
</ul>
<p><a href="">#893</a>: <a href="">tafia/quick-xml#893</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>655691c</code></a> Release 0.38.3</li>
<li><a href=""><code>e7fa0ce</code></a> Merge pull request <a href="">#895</a> from Mingun/fix-eol-normalization</li>
<li><a href=""><code>cd6f813</code></a> XML 1.0 rules for EOL normalization equals to HTML rules, so rename correspon...</li>
<li><a href=""><code>66d8fa2</code></a> Fix incorrect normalization of \rX EOL sequences where X is a char which is U...</li>
<li><a href=""><code>f8a8364</code></a> Release 0.38.2</li>
<li><a href=""><code>3b0f237</code></a> Remove unused header from changelog</li>
<li><a href=""><code>cbf7fa3</code></a> Fix some misprints</li>
<li><a href=""><code>8559e19</code></a> Do not deprecate PrefixIter because that may lead to compilation errors in do...</li>
<li><a href=""><code>b6b9ead</code></a> Merge pull request <a href="">#893</a> from Mingun/public-ns-resolver</li>
<li><a href=""><code>b12ef9f</code></a> Use and recommend <code>NamespaceResolver</code> methods instead of <code>NsReader</code> methods</li>
<li>Additional commits viewable in <a href="https://github.com/tafia/quick-xml/compare/v0.38.1...v0.38.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=quick-xml&package-manager=cargo&previous-version=0.38.1&new-version=0.38.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a55634ab2308`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.