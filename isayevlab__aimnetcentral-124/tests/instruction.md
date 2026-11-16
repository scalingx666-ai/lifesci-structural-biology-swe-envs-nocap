# Issue

**Title:** chore(deps-dev): update pygments requirement from <2.21 to <2.22

## Description

Updates the requirements on [pygments](https://github.com/pygments/pygments) to permit the latest version.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pygments/pygments/releases">pygments's releases</a>.</em></p>
<blockquote>
<h2>2.21.0</h2>
<ul>
<li>
<p>New lexers:</p>
<ul>
<li>BitBake (<a href="">#3103</a>)</li>
<li>Caddyfile (<a href="">#3225</a>)</li>
<li>CEL (<a href="">#3048</a>)</li>
<li>PureScript (<a href="">#1077</a>, <a href="">#3054</a>)</li>
</ul>
</li>
<li>
<p>Updated lexers:</p>
<ul>
<li>Bash: Fix coloured keyword at the beginning of a name (<a href="">#2926</a>)</li>
<li>Boogie: Add missing Boogie and Civl Verifier keywords (<a href="">#3156</a>)</li>
<li>C#:
<ul>
<li>Recognize interpolated verbatim strings with either <code>$@</code> or <code>@$</code>
prefixes (<a href="">#2685</a>)</li>
<li>Support dollar-prefixed and multi-quote raw strings (<a href="">#3129</a>, <a href="">#2897</a>)</li>
<li>Recognize <code>union</code> (<a href="">#3182</a>)</li>
</ul>
</li>
<li>C/C++:
<ul>
<li>Add C23/C++26 attributes (<a href="">#3084</a>)</li>
<li>Add more C2Y keywords (<a href="">#3092</a>)</li>
<li>Highlight a function following a namespace body (<a href="">#2928</a>)</li>
<li>Fix C/C++ lexer support for multiline pre-processor comments (<a href="">#3051</a>)</li>
<li>Add <code>.ipp</code> as a file extension (<a href="">#3141</a>, <a href="">#1008</a>)</li>
</ul>
</li>
<li>Clojure: Recognize named, octal and unicode character literals such as
<code>\space</code> and <code>\o377</code> as a single token (<a href="">#979</a>)</li>
<li>Csound: Add missing opcode parameter type letter (<a href="">#3161</a>)</li>
<li>CUDA: Derive from the C++ lexer instead of C to highlight C++
constructs such as <code>template</code>, <code>class</code> and <code>namespace</code> (<a href="">#3127</a>)</li>
<li>D: Allow non-ASCII (Unicode) identifiers (<a href="">#1088</a>)</li>
<li>Fish: Fix single quote backslash escape (<a href="">#3138</a>, <a href="">#2821</a>)</li>
<li>Go: Various lexer improvements (<a href="">#3199</a>)</li>
<li>GoogleSQL: Require a word break after <code>SET</code> (<a href="">#3167</a>)</li>
<li>Hexdump: Only match valid digits (<a href="">#3200</a>, <a href="">#2847</a>)</li>
<li>JavaScript: Highlight the <code>arguments</code> object (<a href="">#3146</a>)</li>
<li>Jsonnet: Recognize colons in array slice expressions (<a href="">#2828</a>)</li>
<li>JSX: Allow apostrophes in element text (<a href="">#2816</a>)</li>
<li>Julia: Fix rstrings backslash (<a href="">#3140</a>, <a href="">#2537</a>)</li>
<li>Kotlin: Support companion objects without an explicit name (<a href="">#2525</a>)</li>
<li>Kotlin: Don't let a nullable type marker (<code>?</code>) consume the following
character, so <code>Foo?,</code> and <code>a?:b</code> tokenize correctly (<a href="">#2964</a>)</li>
<li>Kusto: Recognize member-access dots in dynamic objects (<a href="">#2779</a>)</li>
<li>Lua: Various improvements (<a href="">#3143</a>)</li>
<li>Macaulay2: Update symbols to 1.26.05 (<a href="">#3120</a>)</li>
<li>Markdown:
<ul>
<li>Highlight bold-italics (<code>***...***</code> and <code>___...___</code>) (<a href="">#3067</a>)</li>
<li>Fix mention regex to support hyphens in usernames (<a href="">#3139</a>, <a href="">#3135</a>)</li>
</ul>
</li>
<li>Markdown, reStructuredText, TiddlyWiki5: Fix wrong token offsets for
embedded code blocks (<a href="">#3133</a>)</li>
<li>Mathematica: Recognize <code>\[Name]</code> named-character escapes such as
<code>\[Nu]</code> instead of emitting an <code>Error</code> token (<a href="">#3097</a>)</li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pygments/pygments/blob/master/CHANGES">pygments's changelog</a>.</em></p>
<blockquote>
<h2>Version 2.21.0</h2>
<p>(released August 17th, 2026)</p>
<ul>
<li>
<p>New lexers:</p>
<ul>
<li>BitBake (<a href="">#3103</a>)</li>
<li>Caddyfile (<a href="">#3225</a>)</li>
<li>CEL (<a href="">#3048</a>)</li>
<li>PureScript (<a href="">#1077</a>, <a href="">#3054</a>)</li>
</ul>
</li>
<li>
<p>Updated lexers:</p>
<ul>
<li>Bash: Fix coloured keyword at the beginning of a name (<a href="">#2926</a>)</li>
<li>Boogie: Add missing Boogie and Civl Verifier keywords (<a href="">#3156</a>)</li>
<li>C#:
<ul>
<li>Recognize interpolated verbatim strings with either <code>$@</code> or <code>@$</code>
prefixes (<a href="">#2685</a>)</li>
<li>Support dollar-prefixed and multi-quote raw strings (<a href="">#3129</a>, <a href="">#2897</a>)</li>
<li>Recognize <code>union</code> (<a href="">#3182</a>)</li>
</ul>
</li>
<li>C/C++:
<ul>
<li>Add C23/C++26 attributes (<a href="">#3084</a>)</li>
<li>Add more C2Y keywords (<a href="">#3092</a>)</li>
<li>Highlight a function following a namespace body (<a href="">#2928</a>)</li>
<li>Fix C/C++ lexer support for multiline pre-processor comments (<a href="">#3051</a>)</li>
<li>Add <code>.ipp</code> as a file extension (<a href="">#3141</a>, <a href="">#1008</a>)</li>
</ul>
</li>
<li>Clojure: Recognize named, octal and unicode character literals such as
<code>\space</code> and <code>\o377</code> as a single token (<a href="">#979</a>)</li>
<li>Csound: Add missing opcode parameter type letter (<a href="">#3161</a>)</li>
<li>CUDA: Derive from the C++ lexer instead of C to highlight C++
constructs such as <code>template</code>, <code>class</code> and <code>namespace</code> (<a href="">#3127</a>)</li>
<li>D: Allow non-ASCII (Unicode) identifiers (<a href="">#1088</a>)</li>
<li>Fish: Fix single quote backslash escape (<a href="">#3138</a>, <a href="">#2821</a>)</li>
<li>Go: Various lexer improvements (<a href="">#3199</a>)</li>
<li>GoogleSQL: Require a word break after <code>SET</code> (<a href="">#3167</a>)</li>
<li>Hexdump: Only match valid digits (<a href="">#3200</a>, <a href="">#2847</a>)</li>
<li>JavaScript: Highlight the <code>arguments</code> object (<a href="">#3146</a>)</li>
<li>Jsonnet: Recognize colons in array slice expressions (<a href="">#2828</a>)</li>
<li>JSX: Allow apostrophes in element text (<a href="">#2816</a>)</li>
<li>Julia: Fix rstrings backslash (<a href="">#3140</a>, <a href="">#2537</a>)</li>
<li>Kotlin: Support companion objects without an explicit name (<a href="">#2525</a>)</li>
<li>Kotlin: Don't let a nullable type marker (<code>?</code>) consume the following
character, so <code>Foo?,</code> and <code>a?:b</code> tokenize correctly (<a href="">#2964</a>)</li>
<li>Kusto: Recognize member-access dots in dynamic objects (<a href="">#2779</a>)</li>
<li>Lua: Various improvements (<a href="">#3143</a>)</li>
<li>Macaulay2: Update symbols to 1.26.05 (<a href="">#3120</a>)</li>
<li>Markdown:
<ul>
<li>Highlight bold-italics (<code>***...***</code> and <code>___...___</code>) (<a href="">#3067</a>)</li>
<li>Fix mention regex to support hyphens in usernames (<a href="">#3139</a>, <a href="">#3135</a>)</li>
</ul>
</li>
<li>Markdown, reStructuredText, TiddlyWiki5: Fix wrong token offsets for</li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a43b45d</code></a> Get ready for the 2.21.0 release.</li>
<li><a href=""><code>d8f14cb</code></a> Fix version_added for Purescript.</li>
<li><a href=""><code>19c5817</code></a> Remove superfluous parentheses from PostgresExplainLexer (<a href="">#3232</a>)</li>
<li><a href=""><code>9992e09</code></a> Merge pull request <a href="">#3191</a> from jvoisin/dupes</li>
<li><a href=""><code>bd22577</code></a> Fix regexlint warnings after latest update.</li>
<li><a href=""><code>6a62df1</code></a> Release preparation: Update the changelog.</li>
<li><a href=""><code>aabba32</code></a> Merge pull request <a href="">#3221</a> from jvoisin/alter</li>
<li><a href=""><code>d3441d0</code></a> Merge pull request <a href="">#3225</a> from jvoisin/caddy</li>
<li><a href=""><code>c593f3f</code></a> Add a lexer for Caddy</li>
<li><a href=""><code>0644b53</code></a> Simplify single-character regex alternations to character classes</li>
<li>Additional commits viewable in <a href="https://github.com/pygments/pygments/compare/0.5...2.21.0">compare view</a></li>
</ul>
</details>
<br />

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

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3dabad9100de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.