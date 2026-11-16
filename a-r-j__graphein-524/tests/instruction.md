# Issue

**Title:** Bump soupsieve from 2.9 to 4.0

## Description

Bumps [soupsieve](https://github.com/facelessuser/soupsieve) from 2.9 to 4.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/facelessuser/soupsieve/releases">soupsieve's releases</a>.</em></p>
<blockquote>
<h2>4.0</h2>
<ul>
<li><strong>BREAK</strong>: The contents of an HTML <code>template</code> are no longer treated as part of the document. Selectors do not
descend into a <code>template</code>, and elements inside one can't see beyond it, which also applies to pseudo-classes such
as <code>:lang()</code>, <code>:disabled</code>, and <code>:default</code>. <code>select</code> and <code>filter</code> will still reach the contents of a <code>template</code> when
they are called on the <code>template</code> itself, for example <code>soup.template.select('p')</code>. See the
<a href="https://github.com/facelessuser/soupsieve/blob/faq.md#how-does-template-handling-work">FAQ</a> for more information.</li>
<li><strong>BREAK</strong>: The contents of an <code>iframe</code> are no longer treated as a separate document, as they are not one in a
browser. Elements in an <code>iframe</code> are normal children, so <code>:root</code> does not match them, and <code>:default</code>,
<code>:indeterminate</code>, <code>:checked</code>, <code>:dir()</code>, <code>:lang()</code>, and <code>:read-write</code> treat them like any other element. Recent
versions of <code>html.parser</code>, <code>lxml</code>, and <code>html5lib</code> all escape the contents of an <code>iframe</code> like a browser does, so
this mostly affects XHTML, Python versions that still don't escape such content in their specific <code>html.parser</code>,
and elements added to an <code>iframe</code> by hand. <code>:-soup-contains()</code> now also includes the escaped text in an <code>iframe</code>.
See the <a href="https://github.com/facelessuser/soupsieve/blob/faq.md#how-does-iframe-handling-work">FAQ</a> for more information.</li>
<li><strong>NEW</strong>: Update <code>:disabled</code> and <code>:enabled</code> to treat <code>option</code> and <code>optgroup</code> elements inside a disabled <code>select</code> as
disabled, following a recent HTML specification update.</li>
<li><strong>FIX</strong>: Fix the subsequent-sibling combinator and <code>:has(~ ...)</code> never matching top level elements of a fragment
that has no root element, unless caching was disabled.</li>
<li><strong>FIX</strong>: <code>:indeterminate</code> now treats a radio button group without a form as extending across the whole document
instead of the top level element that contains it, and it no longer ignores radio buttons at the top level.</li>
<li><strong>FIX</strong>: Fix <code>:default</code> to treat a <code>button</code> with a missing or invalid <code>type</code>, and an <code>input</code> with <code>type=&quot;image&quot;</code>,
as submit buttons.</li>
<li><strong>FIX</strong>: Fix <code>:in-range</code> and <code>:out-of-range</code> raising <code>TypeError</code> when the document contains an <code>input</code> without a
<code>type</code> attribute.</li>
<li><strong>FIX</strong>: <code>:read-write</code> (and <code>:read-only</code>) now treat <code>contenteditable=&quot;plaintext-only&quot;</code> elements as editing hosts and
match the editable elements inside an editing host, following the nearest <code>contenteditable</code> state.</li>
<li><strong>FIX</strong>: <code>:read-write</code> (and <code>:read-only</code>) now ignore <code>contenteditable</code> on non-HTML elements, such as an SVG
<code>foreignObject</code>, as the attribute only applies to HTML elements. Such elements inherit the state of their parent.</li>
<li><strong>FIX</strong>: <code>:checked</code> now only matches the last radio button with a <code>checked</code> attribute in a radio button group, as
in a browser, where a group is the radio buttons with the same <code>name</code> and form, including the <code>form</code> attribute.
<code>:default</code> still matches all of them, and the contents of a <code>template</code> are unaffected as they are not connected.</li>
<li><strong>FIX</strong>: <code>:dir()</code> and <code>:defined</code> no longer affect the rest of the selector list they are in. Previously, a selector
list that used either of them could not have its combinators cross an <code>iframe</code>, ignored the specified namespaces,
and matched nothing in XML, not even the parts that didn't use them. They still do not match in XML, but
<code>:not(:dir(ltr))</code> and <code>:not(:defined)</code> now do.</li>
<li><strong>FIX</strong>: <code>:default</code> and <code>:indeterminate</code> now honor the <code>form</code> attribute, which can associate a submit button or
radio button with a form it is not in, or leave it without a form. It is ignored in a <code>template</code>, as in the HTML
specification. Submit buttons outside of a form can now be its default button.</li>
<li><strong>FIX</strong>: <code>:default</code>, <code>:checked</code>, and <code>:indeterminate</code> now handle a form inside a form like a browser. In HTML, a
browser ignores the nested form and takes its end tag for that of the parent, which matters for parsers that keep
the nested form, such as <code>html.parser</code>. In XHTML and in a <code>template</code>, nested forms are real forms.</li>
<li><strong>FIX</strong>: <code>:checked</code> now matches the <code>option</code> that a browser would select. Without <code>multiple</code>, that is only the
last <code>option</code> with a <code>selected</code> attribute in a <code>select</code>, and if there are none and the <code>select</code> shows a single
option, the first <code>option</code> that is not disabled. <code>:default</code> still only considers the <code>selected</code> attribute.</li>
<li><strong>FIX</strong>: Fix <code>[attribute!=value]</code> excluding values that only start with the specified value, and in XML documents,
<code>type</code> values that contain a newline.</li>
<li><strong>FIX</strong>: Match the values of every attribute that the HTML specification lists as ASCII case insensitive (<code>rel</code>,
<code>method</code>, <code>lang</code>, <code>dir</code>, ...) without ASCII case sensitivity on HTML elements in HTML documents, not just <code>type</code>.
Non-HTML elements are matched case sensitively.</li>
<li><strong>FIX</strong>: <code>:dir()</code> now matches non-HTML elements, such as SVG and MathML, by the direction they inherit from their</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ff1a5ce</code></a> Cache ancestor matches in the descendant combinator (<a href="">#351</a>)</li>
<li><a href=""><code>144deae</code></a> Update docs</li>
<li><a href=""><code>cce8eb5</code></a> Fix iframe tests</li>
<li><a href=""><code>fcfde02</code></a> Respect iframe boundary and ensure behavior matches browsers</li>
<li><a href=""><code>f78ac28</code></a> Various spec fixes</li>
<li><a href=""><code>d305d43</code></a> Generally fix template handling (<a href="">#349</a>)</li>
<li><a href=""><code>cedc978</code></a> Respect namespaces provided by the parser when root is not HTML element (<a href="">#348</a>)</li>
<li><a href=""><code>d0e5402</code></a> Various <code>:dir</code> fixes (<a href="">#347</a>)</li>
<li><a href=""><code>b7bc7d7</code></a> Inherit the direction of non-HTML elements in :dir() (<a href="">#346</a>)</li>
<li><a href=""><code>33f9057</code></a> Allow spaces or <code>T</code> in datetime-local value</li>
<li>Additional commits viewable in <a href="https://github.com/facelessuser/soupsieve/compare/2.9...4.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=soupsieve&package-manager=uv&previous-version=2.9&new-version=4.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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