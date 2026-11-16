# Issue

**Title:** build(deps-dev): bump sass from 1.89.2 to 1.104.1 in /reacnetgenerator/static/webpack

## Description

Bumps [sass](https://github.com/sass/dart-sass) from 1.89.2 to 1.104.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/releases">sass's releases</a>.</em></p>
<blockquote>
<h2>Dart Sass 1.104.1</h2>
<p>To install Sass 1.104.1, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>
<p>Fix a bug where loud comments before <code>@use</code> rules could be emitted multiple times under certain circumstances.</p>
</li>
<li>
<p>Fix a bug in which an invalid selector at the end of an indented syntax stylesheet would cause the parser to crash instead of emitting a useful error message.</p>
</li>
</ul>
<h3>Command Line Interface</h3>
<ul>
<li>
<p>Many-to-many compilations no longer compile any files that appear in the output directory if the output directory is also within the source directory. This fixes a bug where <code>--watch</code> mode could enter an infinite loop recompiling the same CSS file over and over.</p>
</li>
<li>
<p>Sass now sets the modification time of output files to the time compilation <em>started</em> rather than the time it <em>ended</em>. This ensures that, if a source file is modified during compilation, <code>--watch</code> and <code>--update</code> mode will recompile the outputs to include the new source file contents.</p>
</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#11041">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.104.0</h2>
<p>To install Sass 1.104.0, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>
<p><strong>Potentially breaking compatibility fix:</strong> Colors now convert the special values NaN and negative zero, as well as infinity and negative infinity for polar-hue channels, to 0 as per the CSS spec.</p>
</li>
<li>
<p>The special value negative zero is now serialized as <code>-0</code> instead of <code>0</code> for greater compatibility when using it in CSS calculations.</p>
</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#11040">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.103.1</h2>
<p>To install Sass 1.103.1, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li>No user-visible changes.</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#11031">full changelog</a> for changes in earlier releases.</p>
<h2>Dart Sass 1.103.0</h2>
<p>To install Sass 1.103.0, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/blob/main/CHANGELOG.md">sass's changelog</a>.</em></p>
<blockquote>
<h2>1.104.1</h2>
<ul>
<li>
<p>Fix a bug where loud comments before <code>@use</code> rules could be emitted multiple
times under certain circumstances.</p>
</li>
<li>
<p>Fix a bug in which an invalid selector at the end of an indented syntax
stylesheet would cause the parser to crash instead of emitting a useful error
message.</p>
</li>
</ul>
<h3>Command Line Interface</h3>
<ul>
<li>
<p>Many-to-many compilations no longer compile any files that appear in the
output directory if the output directory is also within the source directory.
This fixes a bug where <code>--watch</code> mode could enter an infinite loop recompiling
the same CSS file over and over.</p>
</li>
<li>
<p>Sass now sets the modification time of output files to the time compilation
<em>started</em> rather than the time it <em>ended</em>. This ensures that, if a source file
is modified during compilation, <code>--watch</code> and <code>--update</code> mode will recompile
the outputs to include the new source file contents.</p>
</li>
</ul>
<h2>1.104.0</h2>
<ul>
<li>
<p><strong>Potentially breaking compatibility fix:</strong> Colors now convert the special
values NaN and negative zero, as well as infinity and negative infinity for
polar-hue channels, to 0 as per the CSS spec.</p>
</li>
<li>
<p>The special value negative zero is now serialized as <code>-0</code> instead of <code>0</code> for
greater compatibility when using it in CSS calculations.</p>
</li>
</ul>
<h2>1.103.1</h2>
<ul>
<li>No user-visible changes.</li>
</ul>
<h2>1.103.0</h2>
<ul>
<li><strong>Potentially breaking compatibility fix:</strong> Colors now preserve &quot;analogous
sets&quot; of missing channels during conversions, per the CSS spec. For example,
<code>color.to-space(lch(50% none none), lab)</code> now returns <code>lab(50% none none)</code>
instead of <code>lab(50% 0 0)</code>.</li>
</ul>
<h2>1.102.0</h2>
<ul>
<li>Use the 2.4 gamma transfer function for rec2020, as specified by the latest
draft of CSS Color 4.</li>
</ul>
<h2>1.101.7</h2>
<ul>
<li>No user-visible changes.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>da84fb5</code></a> Fix <code>--watch</code> not recompiling sources modified during a compilation (<a href="">#2850</a>)</li>
<li><a href=""><code>8a287a7</code></a> Merge pull request <a href="">#2859</a> from sass/fix-auto-merge</li>
<li><a href=""><code>6033b46</code></a> Add explicit versions to .github/util actions</li>
<li><a href=""><code>cc71d43</code></a> Only auto-merge dependabot PRs once the tests pass</li>
<li><a href=""><code>49ddc4f</code></a> Revert &quot;Bump dart-lang/setup-dart in /.github/util/initialize&quot;</li>
<li><a href=""><code>71a127d</code></a> Avoid duplicating loud comments that appear before <code>@use</code> (<a href="">#2854</a>)</li>
<li><a href=""><code>f19baab</code></a> Merge pull request <a href="">#2857</a> from sass/dependabot/github_actions/dot-github/util/...</li>
<li><a href=""><code>f5263e2</code></a> Bump dart-lang/setup-dart in /.github/util/initialize</li>
<li><a href=""><code>3018c0d</code></a> Merge pull request <a href="">#2856</a> from sass/dependabot/github_actions/dart-lang/setup-...</li>
<li><a href=""><code>5d74adb</code></a> Bump dart-lang/setup-dart from 1.8.0 to 1.8.1</li>
<li>Additional commits viewable in <a href="https://github.com/sass/dart-sass/compare/1.89.2...1.104.1">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for sass since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sass&package-manager=npm_and_yarn&previous-version=1.89.2&new-version=1.104.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3370d59a9bb5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.