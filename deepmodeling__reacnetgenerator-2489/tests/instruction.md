# Issue

**Title:** build(deps): bump browserslist from 4.23.0 to 4.29.0 in /reacnetgenerator/static/webpack in the npm_and_yarn group across 1 directory

## Description

Bumps the npm_and_yarn group with 1 update in the /reacnetgenerator/static/webpack directory: [browserslist](https://github.com/browserslist/browserslist).

Updates `browserslist` from 4.23.0 to 4.29.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/browserslist/browserslist/releases">browserslist's releases</a>.</em></p>
<blockquote>
<h2>4.29.0</h2>
<ul>
<li>Added query continuations across lines and array entries (by <a href="https://github.com/fzlzjerry"><code>@​fzlzjerry</code></a>).</li>
</ul>
<h2>4.28.9</h2>
<ul>
<li>Improve <code>or</code> parsing performance (by <a href="https://github.com/NotAFlightRisk"><code>@​NotAFlightRisk</code></a>).</li>
</ul>
<h2>4.28.8</h2>
<ul>
<li>Fixed <code>including kaios</code> in baseline queries (by <a href="https://github.com/Jaybhade"><code>@​Jaybhade</code></a>).</li>
</ul>
<h2>4.28.7</h2>
<ul>
<li>Improved parsing performance.</li>
<li>Fixed unbounded memory growth (by <a href="https://github.com/alanturing881"><code>@​alanturing881</code></a>).</li>
<li>Fixed prototype write issue (by <a href="https://github.com/alanturing881"><code>@​alanturing881</code></a>).</li>
</ul>
<h2>4.28.6</h2>
<ul>
<li>Fixed Electron version queries (by <a href="https://github.com/spokodev"><code>@​spokodev</code></a>).</li>
</ul>
<h2>4.28.5</h2>
<ul>
<li>Fixed <code>&gt;</code> and <code>&gt;=</code> queries (by <a href="https://github.com/spokodev"><code>@​spokodev</code></a>).</li>
</ul>
<h2>4.28.4</h2>
<ul>
<li>Fixed <code>SyntaxError</code> regression of 4.28.3.</li>
</ul>
<h2>4.28.3</h2>
<ul>
<li>Fixed baseline query case-insensitivity (by <a href="https://github.com/swwind"><code>@​swwind</code></a>).</li>
</ul>
<h2>4.28.2</h2>
<ul>
<li>Fix prototype pollution (by <a href="https://github.com/chluo1997"><code>@​chluo1997</code></a>).</li>
</ul>
<h2>4.28.1</h2>
<ul>
<li>Removed Baseline warning since we have it own warning.</li>
</ul>
<h2>4.27.0</h2>
<ul>
<li>Added <code>BROWSERSLIST_TRACE_WARNING</code> environment variable.</li>
</ul>
<h2>4.26.3</h2>
<ul>
<li>Fixed <code>throwOnMissing</code> with <code>extends</code> query (by <a href="https://github.com/alexander-akait"><code>@​alexander-akait</code></a>).</li>
</ul>
<h2>4.26.2</h2>
<ul>
<li>Fixed <code>baseline-browser-mapping</code> version requirement.</li>
</ul>
<h2>4.26.1</h2>
<ul>
<li>Updated Firefox ESR.</li>
</ul>
<h2>4.26.0</h2>
<ul>
<li>Added Baseline queries (by <a href="https://github.com/tonypconway"><code>@​tonypconway</code></a>).</li>
</ul>
<h2>4.25.4</h2>
<ul>
<li>Fixed Windows support for custom stats (by <a href="https://github.com/torgeilo"><code>@​torgeilo</code></a>).</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/browserslist/browserslist/blob/main/CHANGELOG.md">browserslist's changelog</a>.</em></p>
<blockquote>
<h2>4.29.0</h2>
<ul>
<li>Added query continuations across lines and array entries (by <a href="https://github.com/fzlzjerry"><code>@​fzlzjerry</code></a>).</li>
</ul>
<h2>4.28.9</h2>
<ul>
<li>Improved <code>or</code> parsing performance (by <a href="https://github.com/NotAFlightRisk"><code>@​NotAFlightRisk</code></a>).</li>
</ul>
<h2>4.28.8</h2>
<ul>
<li>Fixed <code>including kaios</code> in baseline queries (by <a href="https://github.com/Jaybhade"><code>@​Jaybhade</code></a>).</li>
</ul>
<h2>4.28.7</h2>
<ul>
<li>Improved parsing performance.</li>
<li>Fixed unbounded memory growth (by <a href="https://github.com/alanturing881"><code>@​alanturing881</code></a>).</li>
<li>Fixed prototype write issue (by <a href="https://github.com/alanturing881"><code>@​alanturing881</code></a>).</li>
</ul>
<h2>4.28.6</h2>
<ul>
<li>Fixed Electron version queries (by <a href="https://github.com/spokodev"><code>@​spokodev</code></a>).</li>
</ul>
<h2>4.28.5</h2>
<ul>
<li>Fixed <code>&gt;</code> and <code>&gt;=</code> queries (by <a href="https://github.com/spokodev"><code>@​spokodev</code></a>).</li>
</ul>
<h2>4.28.4</h2>
<ul>
<li>Fixed <code>SyntaxError</code> regression of 4.28.3.</li>
</ul>
<h2>4.28.3</h2>
<ul>
<li>Fixed baseline query case-insensitivity (by <a href="https://github.com/swwind"><code>@​swwind</code></a>).</li>
</ul>
<h2>4.28.2</h2>
<ul>
<li>Fix prototype pollution (by <a href="https://github.com/chluo1997"><code>@​chluo1997</code></a>).</li>
</ul>
<h2>4.28.1</h2>
<ul>
<li>Removed Baseline warning since we have it own warning.</li>
</ul>
<h2>4.48.0</h2>
<ul>
<li>Added <code>firefox &gt;= esr</code> query support (by <a href="https://github.com/SethFalco"><code>@​SethFalco</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/SethFalco"><code>@​SethFalco</code></a>).</li>
</ul>
<h2>4.27.0</h2>
<ul>
<li>Added <code>BROWSERSLIST_TRACE_WARNING</code> environment variable.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>e6dd578</code></a> Release 4.29.0 version</li>
<li><a href=""><code>8987b7d</code></a> Typo</li>
<li><a href=""><code>47fefe6</code></a> Move from actions-up to pnpm</li>
<li><a href=""><code>17b1e23</code></a> Update dependencies</li>
<li><a href=""><code>df16b26</code></a> Merge pull request <a href="">#944</a> from fzlzjerry/fix/757-query-continuations</li>
<li><a href=""><code>a2673d7</code></a> Support query continuations across entries</li>
<li><a href=""><code>f46a5b7</code></a> Merge pull request <a href="">#942</a> from agilgur5/fix-docs-typo-security-table</li>
<li><a href=""><code>989c8c9</code></a> docs: fix typo in table rendering for <code>SECURITY.md</code></li>
<li><a href=""><code>12ed525</code></a> Release 4.28.9 version</li>
<li><a href=""><code>b1d8cf9</code></a> Update dependencies</li>
<li>Additional commits viewable in <a href="https://github.com/browserslist/browserslist/compare/4.23.0...4.29.0">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for browserslist since your current version.</p>
</details>
<br />

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a276b6b48eac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.