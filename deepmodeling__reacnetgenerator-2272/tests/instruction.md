# Issue

**Title:** build(deps-dev): bump postcss from 8.4.38 to 8.4.47 in /reacnetgenerator/static/webpack

## Description

Bumps [postcss](https://github.com/postcss/postcss) from 8.4.38 to 8.4.47.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.4.47</h2>
<ul>
<li>Removed debug code.</li>
</ul>
<h2>8.4.46</h2>
<ul>
<li>Fixed <code>Cannot read properties of undefined (reading 'before')</code>.</li>
</ul>
<h2>8.4.45</h2>
<ul>
<li>Removed unnecessary fix which could lead to infinite loop.</li>
</ul>
<h2>8.4.44</h2>
<ul>
<li>Another way to fix <code>markClean is not a function</code> error.</li>
</ul>
<h2>8.4.43</h2>
<ul>
<li>Fixed <code>markClean is not a function</code> error.</li>
</ul>
<h2>8.4.42</h2>
<ul>
<li>Fixed CSS syntax error on long minified files (by <a href="https://github.com/varpstar"><code>@​varpstar</code></a>).</li>
</ul>
<h2>8.4.41</h2>
<ul>
<li>Fixed types (by <a href="https://github.com/nex3"><code>@​nex3</code></a> and <a href="https://github.com/querkmachine"><code>@​querkmachine</code></a>).</li>
<li>Cleaned up RegExps (by <a href="https://github.com/bluwy"><code>@​bluwy</code></a>).</li>
</ul>
<h2>8.4.40</h2>
<ul>
<li>Moved to getter/setter in nodes types to help Sass team (by <a href="https://github.com/nex3"><code>@​nex3</code></a>).</li>
</ul>
<h2>8.4.39</h2>
<ul>
<li>Fixed <code>CssSyntaxError</code> types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.4.47</h2>
<ul>
<li>Removed debug code.</li>
</ul>
<h2>8.4.46</h2>
<ul>
<li>Fixed <code>Cannot read properties of undefined (reading 'before')</code>.</li>
</ul>
<h2>8.4.45</h2>
<ul>
<li>Removed unnecessary fix which could lead to infinite loop.</li>
</ul>
<h2>8.4.44</h2>
<ul>
<li>Another way to fix <code>markClean is not a function</code> error.</li>
</ul>
<h2>8.4.43</h2>
<ul>
<li>Fixed <code>markClean is not a function</code> error.</li>
</ul>
<h2>8.4.42</h2>
<ul>
<li>Fixed CSS syntax error on long minified files (by <a href="https://github.com/varpstar"><code>@​varpstar</code></a>).</li>
</ul>
<h2>8.4.41</h2>
<ul>
<li>Fixed types (by <a href="https://github.com/nex3"><code>@​nex3</code></a> and <a href="https://github.com/querkmachine"><code>@​querkmachine</code></a>).</li>
<li>Cleaned up RegExps (by <a href="https://github.com/bluwy"><code>@​bluwy</code></a>).</li>
</ul>
<h2>8.4.40</h2>
<ul>
<li>Moved to getter/setter in nodes types to help Sass team (by <a href="https://github.com/nex3"><code>@​nex3</code></a>).</li>
</ul>
<h2>8.4.39</h2>
<ul>
<li>Fixed <code>CssSyntaxError</code> types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>5e6fd13</code></a> Release 8.4.47 version</li>
<li><a href=""><code>714bc10</code></a> Typo</li>
<li><a href=""><code>439d20e</code></a> Release 8.4.46 version</li>
<li><a href=""><code>b93582f</code></a> Update dependencies</li>
<li><a href=""><code>c51e467</code></a> Fix error on inserting node without raws in some cases</li>
<li><a href=""><code>829ae47</code></a> Update dependencies</li>
<li><a href=""><code>5aaaec2</code></a> Update remaining workflow jobs to use latest version of actions (<a href="">#1968</a>)</li>
<li><a href=""><code>448c4f3</code></a> Release 8.4.45 version</li>
<li><a href=""><code>1c77d2e</code></a> Update unnecessary check</li>
<li><a href=""><code>f38b329</code></a> Try to fix CI</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.4.38...8.4.47">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=postcss&package-manager=npm_and_yarn&previous-version=8.4.38&new-version=8.4.47)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f5a25e96d2c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.