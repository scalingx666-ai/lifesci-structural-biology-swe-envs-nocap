# Issue

**Title:** Bump postcss from 8.5.15 to 8.5.26 in /viewer-frontend

## Description

Bumps [postcss](https://github.com/postcss/postcss) from 8.5.15 to 8.5.26.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.26</h2>
<ul>
<li>Fixed <code>list.split()</code> regression (by <a href="https://github.com/lazerg"><code>@​lazerg</code></a>).</li>
<li>Track symlinks in path protection in source map loading (by <a href="https://github.com/drengir1"><code>@​drengir1</code></a>).</li>
</ul>
<h2>8.5.25</h2>
<ul>
<li>Fixed 8.5.17 visitor regression.</li>
<li>Fixed <code>list.split()</code> for non-string values (by <a href="https://github.com/amir-rezaei"><code>@​amir-rezaei</code></a>).</li>
</ul>
<h2>8.5.24</h2>
<ul>
<li>Preserve the BOM after the processing (by <a href="https://github.com/hdimer"><code>@​hdimer</code></a>).</li>
</ul>
<h2>8.5.23</h2>
<ul>
<li>Do not load source map without <code>opts.from</code> for security reasons.</li>
</ul>
<h2>8.5.22</h2>
<ul>
<li>Fixed custom property losing semicolon before a comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.21</h2>
<ul>
<li>Fixed childless at-rule losing semicolon before comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/isker"><code>@​isker</code></a>).</li>
</ul>
<h2>8.5.20</h2>
<ul>
<li>Fixed missing space if <code>AtRule#params</code> is set after (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed mixing AST error on warnings (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.19</h2>
<ul>
<li>Fixed cleaning <code>before</code> for new nodes inserted to <code>Root</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.18</h2>
<ul>
<li>Restricted loading previous source maps file to the <code>opts.from</code> folder for security reasons (use <code>unsafeMap: true</code> to disable the check).</li>
</ul>
<h2>8.5.17</h2>
<ul>
<li>Fixed <code>Maximum call stack size exceeded</code> error.</li>
<li>Fixed Prototype hijacking for <code>postcss.fromJSON()</code>.</li>
<li>Fixed <code>Input#origin()</code> for unmapped end position (by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a>).</li>
</ul>
<h2>8.5.16</h2>
<ul>
<li>Fixed <code>Input#origin()</code> position (by <a href="https://github.com/mizdra"><code>@​mizdra</code></a>).</li>
<li>Fixed <code>raws</code> after rehydrating a JSON AST (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed putting parent-less node in <code>nodes</code> of new node (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed computing <code>offset</code> in <code>positionBy()</code> (by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
<li>Fixed <code>rangeBy()</code> on <code>index: 0</code> (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.5.26</h2>
<ul>
<li>Fixed <code>list.split()</code> regression (by <a href="https://github.com/lazerg"><code>@​lazerg</code></a>).</li>
<li>Track symlinks in path protection in source map loading (by <a href="https://github.com/drengir1"><code>@​drengir1</code></a>).</li>
</ul>
<h2>8.5.25</h2>
<ul>
<li>Fixed 8.5.17 visitor regression.</li>
<li>Fixed <code>list.split()</code> for non-string values (by <a href="https://github.com/amir-rezaei"><code>@​amir-rezaei</code></a>).</li>
</ul>
<h2>8.5.24</h2>
<ul>
<li>Preserve the BOM after the processing (by <a href="https://github.com/hdimer"><code>@​hdimer</code></a>).</li>
</ul>
<h2>8.5.23</h2>
<ul>
<li>Do not load source map without <code>opts.from</code> for security reasons.</li>
</ul>
<h2>8.5.22</h2>
<ul>
<li>Fixed custom property losing semicolon before a comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<h2>8.5.21</h2>
<ul>
<li>Fixed childless at-rule losing semicolon before comment (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/isker"><code>@​isker</code></a>).</li>
</ul>
<h2>8.5.20</h2>
<ul>
<li>Fixed missing space if <code>AtRule#params</code> is set after (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
<li>Fixed mixing AST error on warnings (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.19</h2>
<ul>
<li>Fixed cleaning <code>before</code> for new nodes inserted to <code>Root</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
</ul>
<h2>8.5.18</h2>
<ul>
<li>Restricted loading previous source maps file to the <code>opts.from</code> folder for security reasons (use <code>unsafeMap: true</code> to disable the check).</li>
</ul>
<h2>8.5.17</h2>
<ul>
<li>Fixed <code>Maximum call stack size exceeded</code> error.</li>
<li>Fixed Prototype hijacking for <code>postcss.fromJSON()</code>.</li>
<li>Fixed <code>Input#origin()</code> for unmapped end position (by <a href="https://github.com/chatman-media"><code>@​chatman-media</code></a>).</li>
</ul>
<h2>8.5.16</h2>
<ul>
<li>Fixed <code>Input#origin()</code> position (by <a href="https://github.com/mizdra"><code>@​mizdra</code></a>).</li>
<li>Fixed <code>raws</code> after rehydrating a JSON AST (by <a href="https://github.com/sarathfrancis90"><code>@​sarathfrancis90</code></a>).</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>07b2577</code></a> Release 8.5.26 version</li>
<li><a href=""><code>47de6b9</code></a> Update CI</li>
<li><a href=""><code>1493a83</code></a> Fix Rule#selectors losing the empty selector (<a href="">#2129</a>)</li>
<li><a href=""><code>180db16</code></a> Typo</li>
<li><a href=""><code>29e9e00</code></a> Resolve symlinks before the previous-source-map containment check (<a href="">#2125</a>)</li>
<li><a href=""><code>3ba8f84</code></a> Update dependencies</li>
<li><a href=""><code>87e72f6</code></a> Update lock file</li>
<li><a href=""><code>caaeeb9</code></a> Upgrade nanoid to fix infinite loop on zero size (<a href="">#2124</a>)</li>
<li><a href=""><code>3609b6f</code></a> Explain how to type plugin options</li>
<li><a href=""><code>fbad419</code></a> docs: show ESM and TypeScript plugin declaration (<a href="">#2118</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.5.15...8.5.26">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for postcss since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=postcss&package-manager=npm_and_yarn&previous-version=8.5.15&new-version=8.5.26)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/Acellera/moleculekit/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `614a31e78cf4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.