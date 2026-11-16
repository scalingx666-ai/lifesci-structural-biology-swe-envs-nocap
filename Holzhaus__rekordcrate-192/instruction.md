# Issue

**Title:** build(deps): bump quick-xml from 0.38.3 to 0.38.4

## Description

Bumps [quick-xml](https://github.com/tafia/quick-xml) from 0.38.3 to 0.38.4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/releases">quick-xml's releases</a>.</em></p>
<blockquote>
<h2>v0.38.4 - CDATA serialization in serde</h2>
<h2>What's Changed</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#353</a>: Add ability to serialize textual content as CDATA sections in <code>Serializer</code>. Everywhere where the text node may be created, a CDATA section(s) could be produced instead. See the new [<code>Serializer::text_format()</code>] method.</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#912</a>: Fix deserialization of numbers, booleans and characters that is space-wrapped, for example <code>&lt;int&gt;  42  &lt;/int&gt;</code>. That space characters are usually indent added during serialization and other XML serialization libraries trims them</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#901</a>: Fix running tests on 32-bit architecture</li>
<li><a href="">#909</a>: Avoid some allocations in the <code>Serializer</code></li>
</ul>
<p><a href="">#353</a>: <a href="">tafia/quick-xml#353</a>
<a href="">#901</a>: <a href="">tafia/quick-xml#901</a>
<a href="">#909</a>: <a href="">tafia/quick-xml#909</a>
<a href="">#912</a>: <a href="">tafia/quick-xml#912</a>
[<code>Serializer::text_format()</code>]: <a href="https://docs.rs/quick-xml/0.38.4/quick_xml/se/struct.Serializer.html#method.text_format">https://docs.rs/quick-xml/0.38.4/quick_xml/se/struct.Serializer.html#method.text_format</a></p>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/Ninja3047"><code>@​Ninja3047</code></a> made their first contribution in <a href="">tafia/quick-xml#904</a></li>
<li><a href="https://github.com/alexanderkjall"><code>@​alexanderkjall</code></a> made their first contribution in <a href="">tafia/quick-xml#901</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.38.3...v0.38.4">https://github.com/tafia/quick-xml/compare/v0.38.3...v0.38.4</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/blob/master/Changelog.md">quick-xml's changelog</a>.</em></p>
<blockquote>
<h2>0.38.4 -- 2025-11-11</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#353</a>: Add ability to serialize textual content as CDATA sections in <code>Serializer</code>.
Everywhere where the text node may be created, a CDATA section(s) could be produced instead.
See the new [<code>Serializer::text_format()</code>] method.</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#912</a>: Fix deserialization of numbers, booleans and characters that is space-wrapped, for example
<code>&lt;int&gt;  42  &lt;/int&gt;</code>. That space characters are usually indent added during serialization and
other XML serialization libraries trims them</li>
</ul>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#901</a>: Fix running tests on 32-bit architecture</li>
<li><a href="">#909</a>: Avoid some allocations in the <code>Serializer</code></li>
</ul>
<p><a href="">#353</a>: <a href="">tafia/quick-xml#353</a>
<a href="">#901</a>: <a href="">tafia/quick-xml#901</a>
<a href="">#909</a>: <a href="">tafia/quick-xml#909</a>
<a href="">#912</a>: <a href="">tafia/quick-xml#912</a>
[<code>Serializer::text_format()</code>]: <a href="https://docs.rs/quick-xml/0.38.4/quick_xml/se/struct.Serializer.html#method.text_format">https://docs.rs/quick-xml/0.38.4/quick_xml/se/struct.Serializer.html#method.text_format</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>595033e</code></a> Release 0.38.4</li>
<li><a href=""><code>06772a6</code></a> compare: update xml-rs 0.8 -&gt; 1.0</li>
<li><a href=""><code>40a8ec1</code></a> compare: update xml5ever 0.35 -&gt; 0.36</li>
<li><a href=""><code>8188346</code></a> Merge pull request <a href="">#912</a> from Mingun/trim-spaces-for-primitives</li>
<li><a href=""><code>10d0646</code></a> Trim spaces in SimpleTypeDeserializer before deserialize numbers, booleans an...</li>
<li><a href=""><code>1b07a6a</code></a> Add tests with spaces around values</li>
<li><a href=""><code>1fc4cb1</code></a> Add tests for deserializing primitives from self-closed tag</li>
<li><a href=""><code>c67b82b</code></a> Reorder text_nested test to match common order</li>
<li><a href=""><code>4c8712c</code></a> Split one <code>trivial::\&lt;type&gt;::{field, naked, text}</code> tests to several independen...</li>
<li><a href=""><code>f2ac3f3</code></a> Forward deserialization of primitives to SimpleTypeDeserializer</li>
<li>Additional commits viewable in <a href="https://github.com/tafia/quick-xml/compare/v0.38.3...v0.38.4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=quick-xml&package-manager=cargo&previous-version=0.38.3&new-version=0.38.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50cd27bb4c67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.