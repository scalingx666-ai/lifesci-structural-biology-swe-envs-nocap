# Issue

**Title:** chore(deps-dev): bump prettier from 3.6.2 to 3.9.6

## Description

Bumps [prettier](https://github.com/prettier/prettier) from 3.6.2 to 3.9.6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/prettier/prettier/releases">prettier's releases</a>.</em></p>
<blockquote>
<h2>3.9.6</h2>
<h2>What's Changed</h2>
<ul>
<li>Preserve quotes for methods named <code>new</code> (<a href="">prettier/prettier#19621</a> by <a href="https://github.com/kovsu"><code>@​kovsu</code></a>)</li>
<li>Support <code>import defer</code> in <code>typescript</code> parser (<a href="">prettier/prettier#19624</a>, <a href="">prettier/prettier#19675</a> by <a href="https://github.com/fisker"><code>@​fisker</code></a>)</li>
<li>Added a new official plugin <a href="https://github.com/prettier/prettier/tree/3.9.6/packages/plugin-yuku"><code>@prettier/plugin-yuku</code> 🚀</a> (<a href="">prettier/prettier#19628</a>, <a href="">prettier/prettier#19629</a> by <a href="https://github.com/fisker"><code>@​fisker</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.9.6/CHANGELOG.md#396">Changelog</a></p>
<h2>3.9.5</h2>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.9.5/CHANGELOG.md#395">Changelog</a></p>
<h2>3.9.4</h2>
<ul>
<li>Angular: Format <code>@content(name)</code> -&gt; <code>@content (name)</code> to align with other block syntax (<a href="">#19499</a> by <a href="https://github.com/fisker"><code>@​fisker</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.9.4/CHANGELOG.md#394">Changelog</a></p>
<h2>3.9.3</h2>
<ul>
<li>Markdown: Fix unexpected removal of characters in liquid syntax (<a href="">prettier/prettier#19489</a> by <a href="https://github.com/seiyab"><code>@​seiyab</code></a>)</li>
<li>TypeScript: Allow decorators to be used with declare on class fields (<a href="">prettier/prettier#19492</a> by <a href="https://github.com/evoactivity"><code>@​evoactivity</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.9.3/CHANGELOG.md#393">Changelog</a></p>
<h2>3.9.1</h2>
<ul>
<li>CLI: Fix ignored file has been cached incorrectly (<a href="">#19483</a> by <a href="https://github.com/kovsu"><code>@​kovsu</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.9.1/CHANGELOG.md#391">Changelog</a></p>
<h2>3.9.0</h2>
<p><a href="https://github.com/prettier/prettier/compare/3.8.5...3.9.0">diff</a></p>
<p>🔗 <a href="https://prettier.io/blog/2026/06/27/3.9.0">Prettier 3.9: Major parser upgrades and Formatting improvements</a></p>
<h2>3.8.5</h2>
<ul>
<li>Fix Flow variance annotation print (<a href="">#19022</a> by <a href="https://github.com/marcoww6"><code>@​marcoww6</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.8.5/CHANGELOG.md#385">Changelog</a></p>
<h2>3.8.4</h2>
<ul>
<li>Markdown: Fix blank lines between list items and nested sub-lists being removed in Markdown/MDX (<a href="">prettier/prettier#17746</a> by <a href="https://github.com/byplayer"><code>@​byplayer</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.8.4/CHANGELOG.md#384">Changelog</a></p>
<h2>3.8.3</h2>
<ul>
<li>SCSS: Prevent trailing comma in <code>if()</code> function (<a href="">prettier/prettier#18471</a> by <a href="https://github.com/kovsu"><code>@​kovsu</code></a>)</li>
</ul>
<p>🔗 <a href="https://github.com/prettier/prettier/blob/3.8.3/CHANGELOG.md#383">Changelog</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/prettier/prettier/blob/main/CHANGELOG.md">prettier's changelog</a>.</em></p>
<blockquote>
<h1>3.9.6</h1>
<p><a href="https://github.com/prettier/prettier/compare/3.9.5...3.9.6">diff</a></p>
<h4>TypeScript: Preserve quotes for methods named <code>new</code> (<a href="">#19621</a> by <a href="https://github.com/kovsu"><code>@​kovsu</code></a>)</h4>
<!-- raw HTML omitted -->
<pre lang="tsx"><code>// Input
interface Container {
  &quot;new&quot;(id: string): number;
}
<p>// Prettier 3.9.5<br />
interface Container {<br />
new(id: string): number;<br />
}</p>
<p>// Prettier 3.9.6<br />
interface Container {<br />
&quot;new&quot;(id: string): number;<br />
}<br />
</code></pre></p>
<h4>TypeScript: Support <code>import defer</code> (<a href="">#19624</a>, <a href="">#19675</a> by <a href="https://github.com/fisker"><code>@​fisker</code></a>)</h4>
<!-- raw HTML omitted -->
<pre lang="tsx"><code>// Input
import defer * as foo from &quot;foo&quot;;
<p>// Prettier 3.9.5<br />
import * as foo from &quot;foo&quot;;</p>
<p>// Prettier 3.9.6<br />
import defer * as foo from &quot;foo&quot;;<br />
</code></pre></p>
<h4>JavaScript: Added a new official plugin <code>@prettier/plugin-yuku</code> (<a href="">#19628</a>, <a href="">#19629</a> by <a href="https://github.com/fisker"><code>@​fisker</code></a>)</h4>
<p><code>@prettier/plugin-yuku</code> is powered by <a href="https://yuku.fyi/">Yuku</a> (A high-performance JavaScript/TypeScript compiler toolchain written in Zig).</p>
<p>This plugin includes two new parsers: <code>yuku</code> (JavaScript syntax) and <code>yuku-ts</code> (TypeScript syntax).</p>
<p><strong>To use this plugin:</strong></p>
<ol>
<li>
<p>Install the plugin:</p>
<pre lang="bash"><code>yarn add --dev prettier @prettier/plugin-yuku
</code></pre>
</li>
</ol>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8f0c950</code></a> Release 3.9.6</li>
<li><a href=""><code>e910764</code></a> Update changelog</li>
<li><a href=""><code>ec3f1c7</code></a> Update typescript-eslint to v8.65.0 (<a href="">#19675</a>)</li>
<li><a href=""><code>73d2efc</code></a> Update Yuku parser to v0.7.0 (<a href="">#19664</a>)</li>
<li><a href=""><code>dd5e24e</code></a> Preserve quotes for <code>TSMethodSignature</code> nodes named <code>new</code> (<a href="">#19621</a>)</li>
<li><a href=""><code>c03ab4e</code></a> Update dependency eslint-plugin-unicorn to v72 (<a href="">#19633</a>)</li>
<li><a href=""><code>b74dd53</code></a> Update Yuku parser to v0.6.5 (<a href="">#19654</a>)</li>
<li><a href=""><code>f1b594e</code></a> Update dependency eslint-plugin-simple-import-sort to v14 (<a href="">#19655</a>)</li>
<li><a href=""><code>0d9dfb6</code></a> Update Yuku parser to v0.6.4 (<a href="">#19650</a>)</li>
<li><a href=""><code>3bbb815</code></a> Remove <code>typescript-only</code> directory (<a href="">#19636</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/prettier/prettier/compare/3.6.2...3.9.6">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for prettier since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=prettier&package-manager=npm_and_yarn&previous-version=3.6.2&new-version=3.9.6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `da0f6b44ebed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.