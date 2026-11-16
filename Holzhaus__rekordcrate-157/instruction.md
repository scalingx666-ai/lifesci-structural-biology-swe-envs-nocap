# Issue

**Title:** build(deps): bump quick-xml from 0.37.5 to 0.38.1

## Description

Bumps [quick-xml](https://github.com/tafia/quick-xml) from 0.37.5 to 0.38.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/releases">quick-xml's releases</a>.</em></p>
<blockquote>
<h2>v0.38.1 - EOL normalization in events</h2>
<h2>What's Changed</h2>
<h3>Important changes</h3>
<p>To get text in events according to the XML specification (normalized EOLs) use the new methods <code>xml_content()</code> instead of <code>decode()</code>. <code>Deserializer</code> uses new method automatically.</p>
<h3>New Features</h3>
<ul>
<li><a href="">#882</a>: Add new methods to create <code>Deserializer</code> from existing <code>NsReader</code>:
<ul>
<li><code>Deserializer::borrowing</code></li>
<li><code>Deserializer::borrowing_with_resolver</code></li>
<li><code>Deserializer::buffering</code></li>
<li><code>Deserializer::buffering_with_resolver</code></li>
</ul>
</li>
<li><a href="">#878</a>: Add ability to serialize structs in <code>$value</code> fields. The struct name will be used as a tag name. Previously only enums was allowed there.</li>
<li><a href="">#806</a>: Add <code>BytesText::xml_content</code>, <code>BytesCData::xml_content</code> and <code>BytesRef::xml_content</code> methods which returns XML EOL normalized strings.</li>
<li><a href="">#806</a>: Add <code>BytesText::html_content</code>, <code>BytesCData::html_content</code> and <code>BytesRef::html_content</code> methods which returns HTML EOL normalized strings.</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#806</a>: Properly normalize EOL characters in <code>Deserializer</code>.</li>
<li><a href="">#888</a>: Properly split attribute values by items when deserialize attribute into list of values and attribute requires decoding.</li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/fukusuket"><code>@​fukusuket</code></a> made their first contribution in <a href="">tafia/quick-xml#874</a></li>
<li><a href="https://github.com/xdm67x"><code>@​xdm67x</code></a> made their first contribution in <a href="">tafia/quick-xml#882</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.38.0...v0.38.1">https://github.com/tafia/quick-xml/compare/v0.38.0...v0.38.1</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/blob/master/Changelog.md">quick-xml's changelog</a>.</em></p>
<blockquote>
<h2>0.38.1 -- 2025-08-03</h2>
<h3>Important changes</h3>
<p>To get text in events according to the XML specification (normalized EOLs) use the
new methods <code>xml_content()</code> instead of <code>decode()</code>. <code>Deserializer</code> uses new method
automatically.</p>
<h3>New Features</h3>
<ul>
<li><a href="">#882</a>: Add new methods to create <code>Deserializer</code> from existing <code>NsReader</code>:
<ul>
<li><code>Deserializer::borrowing</code></li>
<li><code>Deserializer::borrowing_with_resolver</code></li>
<li><code>Deserializer::buffering</code></li>
<li><code>Deserializer::buffering_with_resolver</code></li>
</ul>
</li>
<li><a href="">#878</a>: Add ability to serialize structs in <code>$value</code> fields. The struct name will
be used as a tag name. Previously only enums was allowed there.</li>
<li><a href="">#806</a>: Add <code>BytesText::xml_content</code>, <code>BytesCData::xml_content</code> and <code>BytesRef::xml_content</code>
methods which returns XML EOL normalized strings.</li>
<li><a href="">#806</a>: Add <code>BytesText::html_content</code>, <code>BytesCData::html_content</code> and <code>BytesRef::html_content</code>
methods which returns HTML EOL normalized strings.</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li><a href="">#806</a>: Properly normalize EOL characters in <code>Deserializer</code>.</li>
<li><a href="">#888</a>: Properly split attribute values by items when deserialize attribute into
list of values and attribute requires decoding.</li>
</ul>
<h3>Misc Changes</h3>
<p><a href="">#806</a>: <a href="">tafia/quick-xml#806</a>
<a href="">#878</a>: <a href="">tafia/quick-xml#878</a>
<a href="">#882</a>: <a href="">tafia/quick-xml#882</a>
<a href="">#888</a>: <a href="">tafia/quick-xml#888</a></p>
<h2>0.38.0 -- 2025-06-28</h2>
<h3>Significant changes</h3>
<p>Now references to entities (as predefined, such as <code>&amp;lt;</code>, as user-defined) reported as a new
<code>Event::GeneralRef</code>.
Caller can parse the content of the entity and stream events from it as it is required by the
XML specification. See the updated <code>custom_entities</code> example!</p>
<p>Implement whitespace behavior in the standard in <code>Deserializer</code>, which says string primitive
types should preserve whitespace, while all other primitives have collapse behavior.</p>
<h3>New Features</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4699308</code></a> Release 0.38.1</li>
<li><a href=""><code>6894362</code></a> Explicitly recommend using <code>xml_content()</code> instead of <code>decode()</code> in events</li>
<li><a href=""><code>d064697</code></a> Add support for criterion 0.7</li>
<li><a href=""><code>c214c51</code></a> Merge pull request <a href="">#888</a> from Mingun/fix-attr-list-de</li>
<li><a href=""><code>b312a23</code></a> Properly split attribute values by items when deserialize attribute into list...</li>
<li><a href=""><code>c00bbc1</code></a> Add regression test for deserializing list attributes that requires decoding</li>
<li><a href=""><code>6a6d23c</code></a> Merge pull request <a href="">#887</a> from Mingun/fix-eol-normalziation</li>
<li><a href=""><code>b26e2f4</code></a> Fix incorrect assumption that <code>normalize_eol_step</code> always get only characters...</li>
<li><a href=""><code>6cf8c9f</code></a> Merge pull request <a href="">#884</a> from Mingun/eol-normalization</li>
<li><a href=""><code>38b44d4</code></a> Properly normalize EOL characters in <code>Deserializer</code> in elements (but not in a...</li>
<li>Additional commits viewable in <a href="https://github.com/tafia/quick-xml/compare/v0.37.5...v0.38.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=quick-xml&package-manager=cargo&previous-version=0.37.5&new-version=0.38.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `519d0085918d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.