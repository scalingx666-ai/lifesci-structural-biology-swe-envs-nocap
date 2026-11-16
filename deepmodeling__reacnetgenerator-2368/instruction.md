# Issue

**Title:** build(deps-dev): bump postcss from 8.4.47 to 8.5.6 in /reacnetgenerator/static/webpack

## Description

Bumps [postcss](https://github.com/postcss/postcss) from 8.4.47 to 8.5.6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.6</h2>
<ul>
<li>Fixed <code>ContainerWithChildren</code> type discriminating (by <a href="https://github.com/Goodwine"><code>@​Goodwine</code></a>).</li>
</ul>
<h2>8.5.5</h2>
<ul>
<li>Fixed <code>package.json</code>→<code>exports</code> compatibility with some tools (by <a href="https://github.com/JounQin"><code>@​JounQin</code></a>).</li>
</ul>
<h2>8.5.4</h2>
<ul>
<li>Fixed Parcel compatibility issue (by <a href="https://github.com/git-sumitchaudhary"><code>@​git-sumitchaudhary</code></a>).</li>
</ul>
<h2>8.5.3</h2>
<ul>
<li>Added more details to <code>Unknown word</code> error (by <a href="https://github.com/hiepxanh"><code>@​hiepxanh</code></a>).</li>
<li>Fixed types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/catnipan"><code>@​catnipan</code></a>).</li>
</ul>
<h2>8.5.2</h2>
<ul>
<li>Fixed end position of rules with semicolon (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.5.1</h2>
<ul>
<li>Fixed backwards compatibility for complex cases (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.5 “Duke Alloces”</h2>
<!-- raw HTML omitted -->
<p>PostCSS 8.5 brought API to work better with non-CSS sources like HTML, Vue.js/Svelte sources or CSS-in-JS.</p>
<p><a href="https://github.com/romainmenke"><code>@​romainmenke</code></a> during <a href="">his work</a> on <a href="https://stylelint.io">Stylelint</a> added <code>Input#document</code> in additional to <code>Input#css</code>.</p>
<pre lang="js"><code>root.source.input.document //=&gt; &quot;&lt;p&gt;Hello&lt;/p&gt;
                           //    &lt;style&gt;
                           //    p {
                           //      color: green;
                           //    }
                           //    &lt;/style&gt;&quot;
root.source.input.css      //=&gt; &quot;p {
                           //      color: green;
                           //    }&quot;
<p></code></pre></p>
<h2>Thanks to Sponsors</h2>
<p>This release was possible thanks to our community.</p>
<p>If your company wants to support the sustainability of front-end infrastructure or wants to give some love to PostCSS, you can join our supporters by:</p>
<ul>
<li><a href="https://tidelift.com/"><strong>Tidelift</strong></a> with a Spotify-like subscription model supporting all projects from your lock file.</li>
<li>Direct donations at <a href="https://github.com/sponsors/ai"><strong>GitHub Sponsors</strong></a> or <a href="https://opencollective.com/postcss#section-contributors"><strong>Open Collective</strong></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.5.6</h2>
<ul>
<li>Fixed <code>ContainerWithChildren</code> type discriminating (by <a href="https://github.com/Goodwine"><code>@​Goodwine</code></a>).</li>
</ul>
<h2>8.5.5</h2>
<ul>
<li>Fixed <code>package.json</code>→<code>exports</code> compatibility with some tools (by <a href="https://github.com/JounQin"><code>@​JounQin</code></a>).</li>
</ul>
<h2>8.5.4</h2>
<ul>
<li>Fixed Parcel compatibility issue (by <a href="https://github.com/git-sumitchaudhary"><code>@​git-sumitchaudhary</code></a>).</li>
</ul>
<h2>8.5.3</h2>
<ul>
<li>Added more details to <code>Unknown word</code> error (by <a href="https://github.com/hiepxanh"><code>@​hiepxanh</code></a>).</li>
<li>Fixed types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/catnipan"><code>@​catnipan</code></a>).</li>
</ul>
<h2>8.5.2</h2>
<ul>
<li>Fixed end position of rules with semicolon (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.5.1</h2>
<ul>
<li>Fixed backwards compatibility for complex cases (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.5 “Duke Alloces”</h2>
<ul>
<li>Added <code>Input#document</code> for sources like CSS-in-JS or HTML (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.4.49</h2>
<ul>
<li>Fixed custom syntax without <code>source.offset</code> (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
<h2>8.4.48</h2>
<ul>
<li>Fixed position calculation in error/warnings methods (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>91d6eb5</code></a> Release 8.5.6 version</li>
<li><a href=""><code>65ffc55</code></a> Update dependencies</li>
<li><a href=""><code>ecd20eb</code></a> Fix ContainerWithChildren to allow discriminating the node type by comparing ...</li>
<li><a href=""><code>c181597</code></a> Release 8.5.5 version</li>
<li><a href=""><code>c5523fb</code></a> Update dependencies</li>
<li><a href=""><code>2e3450c</code></a> refactor: <code>import</code> should be listed before <code>require</code> (<a href="">#2052</a>)</li>
<li><a href=""><code>4d720bd</code></a> Update EM text</li>
<li><a href=""><code>6cb4a66</code></a> Release 8.5.4 version</li>
<li><a href=""><code>ec5c1e0</code></a> Update dependencies</li>
<li><a href=""><code>e85e938</code></a> Fix code format</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.4.47...8.5.6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=postcss&package-manager=npm_and_yarn&previous-version=8.4.47&new-version=8.5.6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5b75986f377`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.