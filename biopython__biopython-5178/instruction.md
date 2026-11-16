# Issue

**Title:** Bump geekyeggo/delete-artifact from 5 to 6

## Description

Bumps [geekyeggo/delete-artifact](https://github.com/geekyeggo/delete-artifact) from 5 to 6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/geekyeggo/delete-artifact/releases">geekyeggo/delete-artifact's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Update Node.js version from 20 to 24 by <a href="https://github.com/Tom-van-Woudenberg"><code>@​Tom-van-Woudenberg</code></a> in <a href="">GeekyEggo/delete-artifact#31</a></li>
<li>Update dependencies, switch to ESM, and improve tsconfig <a href="https://github.com/GeekyEggo"><code>@​GeekyEggo</code></a> in <a href="">GeekyEggo/delete-artifact#32</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/Tom-van-Woudenberg"><code>@​Tom-van-Woudenberg</code></a> made their first contribution in <a href="">GeekyEggo/delete-artifact#31</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/GeekyEggo/delete-artifact/compare/v5.1.0...v6.0.0">https://github.com/GeekyEggo/delete-artifact/compare/v5.1.0...v6.0.0</a></p>
<h2>v5.1.0</h2>
<ul>
<li>Mark deprecated token parameter as optional.</li>
<li>Bump undici dependency.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/GeekyEggo/delete-artifact/blob/main/CHANGELOG.md">geekyeggo/delete-artifact's changelog</a>.</em></p>
<blockquote>
<!-- raw HTML omitted -->
<h1>Change Log</h1>
<h2>v5.1</h2>
<ul>
<li>Mark deprecated token parameter as optional.</li>
<li>Bump undici dependency.</li>
</ul>
<h2>v5.0</h2>
<ul>
<li>Switch to <a href="https://www.npmjs.com/package/@actions/artifact"><code>@​actions/artifact</code></a>, removing the need for a <code>token</code> parameter (Sebastian Weigand) <a href="">#24</a></li>
</ul>
<h2>v4.1</h2>
<ul>
<li>Add default token.</li>
<li>Fix over-arching <code>catch</code> output; errors now correctly result in a failed run (Leon Linhart) <a href="">#18</a></li>
</ul>
<h2>v4.0</h2>
<ul>
<li>Add support for artifacts uploaded with <code>actions/upload-artifact@v4</code>.</li>
<li>Add requirement of <code>token</code> with read and write access to actions.</li>
<li>Update requests to use GitHub REST API.</li>
<li>Deprecate support for <code>actions/upload-artifact@v1</code>, <code>actions/upload-artifact@v2</code>, and <code>actions/upload-artifact@v3</code> (please use <code>geekyeggo/delete-artifact@v2</code>).</li>
</ul>
<h2>v2.0</h2>
<ul>
<li>Add support for glob pattern matching via <code>useGlob</code>.</li>
</ul>
<h2>v1.0</h2>
<ul>
<li>Initial release.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>176a747</code></a> 6.0.0</li>
<li><a href=""><code>cebf182</code></a> build: update workflow action versions (<a href="">#33</a>)</li>
<li><a href=""><code>13c2c87</code></a> chore: update deps, switch to esm, and improve tsconfig (<a href="">#32</a>)</li>
<li><a href=""><code>23c7da5</code></a> Upgrade Node.js version from 20 to 24 (<a href="">#31</a>)</li>
<li><a href=""><code>e46cfb9</code></a> build(deps): bump <code>@​actions/artifact</code> from 2.1.4 to 2.1.7 (<a href="">#27</a>)</li>
<li><a href=""><code>25f053d</code></a> docs: add commit sha for 5.1.0</li>
<li>See full diff in <a href="https://github.com/geekyeggo/delete-artifact/compare/v5...v6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=geekyeggo/delete-artifact&package-manager=github_actions&previous-version=5&new-version=6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a25e8c780f1c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.