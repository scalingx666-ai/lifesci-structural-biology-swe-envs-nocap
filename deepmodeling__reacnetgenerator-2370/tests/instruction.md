# Issue

**Title:** build(deps-dev): bump sass from 1.83.1 to 1.89.2 in /reacnetgenerator/static/webpack

## Description

Bumps [sass](https://github.com/sass/dart-sass) from 1.83.1 to 1.89.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/releases">sass's releases</a>.</em></p>
<blockquote>
<h2>Dart Sass 1.89.2</h2>
<p>To install Sass 1.89.2, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<h3>Embedded Host</h3>
<ul>
<li>Fixed a compilation error caused by an outdated <code>buf</code> dependency.</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#1892">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.89.1</h2>
<p>To install Sass 1.89.1, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>No user-visible changes.</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#1891">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.89.0</h2>
<p>To install Sass 1.89.0, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>Allow the Node package importer to load files even when there are multiple potential resolutions, as long as those resolutions all point to the same file.</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#1890">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.88.0</h2>
<p>To install Sass 1.88.0, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>
<p>Allow custom properties with empty values (such as <code>--var:;</code>).</p>
</li>
<li>
<p>Fix a bug when calculating source spans for interpolations.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/blob/main/CHANGELOG.md">sass's changelog</a>.</em></p>
<blockquote>
<h2>1.89.2</h2>
<h3>Embedded Host</h3>
<ul>
<li>Fixed a compilation error caused by an outdated <code>buf</code> dependency.</li>
</ul>
<h2>1.89.1</h2>
<ul>
<li>No user-visible changes.</li>
</ul>
<h2>1.89.0</h2>
<ul>
<li>Allow the Node package importer to load files even when there are multiple
potential resolutions, as long as those resolutions all point to the same
file.</li>
</ul>
<h2>1.88.0</h2>
<ul>
<li>
<p>Allow custom properties with empty values (such as <code>--var:;</code>).</p>
</li>
<li>
<p>Fix a bug when calculating source spans for interpolations.</p>
</li>
</ul>
<h3>Dart and JS APIs</h3>
<ul>
<li><strong>Potentially breaking bug fix:</strong> Throw an error when passing a function or
mixin object from one compilation to another.</li>
</ul>
<h3>Dart API</h3>
<ul>
<li>Deprecate passing a relative URL to <code>compileString()</code> and related functions.</li>
</ul>
<h2>1.87.0</h2>
<ul>
<li><strong>Potentially breaking bug fix:</strong> When a plain CSS file with a top-level
nesting selector <code>&amp;</code> is loaded into a nested Sass context via
<code>meta.load-css()</code> or <code>@import</code>, Sass now emits plain CSS nesting rather than
incorrectly combining it with the parent selector using a descendant
combinator.</li>
</ul>
<h2>1.86.3</h2>
<ul>
<li>Fix a bug introduced in 1.86.1 where Sass fails to resolve paths starting with
a <code>..</code> segment.</li>
</ul>
<h2>1.86.2</h2>
<ul>
<li>No user-visible changes.</li>
</ul>
<h2>1.86.1</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>1250380</code></a> release 1.89.2 for an embedded-host-node fix (<a href="">#2585</a>)</li>
<li><a href=""><code>c2532cc</code></a> Bump lints from 5.1.1 to 6.0.0 (<a href="">#2581</a>)</li>
<li><a href=""><code>4498007</code></a> Bump jest-extended from 4.0.2 to 5.0.3 in /pkg/sass-parser (<a href="">#2582</a>)</li>
<li><a href=""><code>394fbe5</code></a> Merge pull request <a href="">#2583</a> from sass/list-parens</li>
<li><a href=""><code>3c9a501</code></a> Fix sass-parser compatibility with the latest PostCSS</li>
<li><a href=""><code>9a5b4f5</code></a> Properly add <code>ParenthesizedExpression</code> for comma-separated lists</li>
<li><a href=""><code>e7b70e2</code></a> Remove ia32 support on dart 3.8 (<a href="">#2579</a>)</li>
<li><a href=""><code>4e9e206</code></a> Allow the Node.js pkg importer to return the same URL multiple times (<a href="">#2575</a>)</li>
<li><a href=""><code>c6b2163</code></a> Merge pull request <a href="">#2572</a> from sass/empty-custom-prop</li>
<li><a href=""><code>6edc11e</code></a> Support empty custom properties</li>
<li>Additional commits viewable in <a href="https://github.com/sass/dart-sass/compare/1.83.1...1.89.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sass&package-manager=npm_and_yarn&previous-version=1.83.1&new-version=1.89.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `848306dfa991`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.