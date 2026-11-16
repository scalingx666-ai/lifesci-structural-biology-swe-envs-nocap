# Issue

**Title:** chore(deps-dev): bump rollup from 4.53.3 to 4.59.0

## Description

Bumps [rollup](https://github.com/rollup/rollup) from 4.53.3 to 4.59.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rollup/rollup/releases">rollup's releases</a>.</em></p>
<blockquote>
<h2>v4.59.0</h2>
<h2>4.59.0</h2>
<p><em>2026-02-22</em></p>
<h3>Features</h3>
<ul>
<li>Throw when the generated bundle contains paths that would leave the output directory (<a href="">#6276</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6275</a>: Validate bundle stays within output dir (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>v4.58.0</h2>
<h2>4.58.0</h2>
<p><em>2026-02-20</em></p>
<h3>Features</h3>
<ul>
<li>Also support <code>__NO_SIDE_EFFECTS__</code> annotation before variable declarations declaring function expressions (<a href="">#6272</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6256</a>: docs: document PreRenderedChunk properties including isDynamicEntry and isImplicitEntry (<a href="https://github.com/njg7194"><code>@​njg7194</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6259</a>: docs: Correct typo and improve sentence structure in docs for <code>output.experimentalMinChunkSize</code> (<a href="https://github.com/millerick"><code>@​millerick</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6260</a>: fix(deps): update rust crate swc_compiler_base to v47 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6261</a>: fix(deps): lock file maintenance minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6262</a>: Avoid unnecessary cloning of the code string (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6263</a>: fix(deps): update minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6265</a>: chore(deps): lock file maintenance (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6267</a>: fix(deps): update minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6268</a>: chore(deps): update dependency eslint-plugin-unicorn to v63 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6269</a>: chore(deps): update dependency lru-cache to v11 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6270</a>: chore(deps): lock file maintenance (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6272</a>: forward NO_SIDE_EFFECTS annotations to function expressions in variable declarations (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>v4.57.1</h2>
<h2>4.57.1</h2>
<p><em>2026-01-30</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Fix heap corruption issue in Windows (<a href="">#6251</a>)</li>
<li>Ensure exports of a dynamic import are fully included when called from a try...catch (<a href="">#6254</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6251</a>: fix: Isolate and cache <code>process.report.getReport()</code> calls in a child process for robust environment detection (<a href="https://github.com/alan-agius4"><code>@​alan-agius4</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rollup/rollup/blob/master/CHANGELOG.md">rollup's changelog</a>.</em></p>
<blockquote>
<h2>4.59.0</h2>
<p><em>2026-02-22</em></p>
<h3>Features</h3>
<ul>
<li>Throw when the generated bundle contains paths that would leave the output directory (<a href="">#6276</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6275</a>: Validate bundle stays within output dir (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>4.58.0</h2>
<p><em>2026-02-20</em></p>
<h3>Features</h3>
<ul>
<li>Also support <code>__NO_SIDE_EFFECTS__</code> annotation before variable declarations declaring function expressions (<a href="">#6272</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6256</a>: docs: document PreRenderedChunk properties including isDynamicEntry and isImplicitEntry (<a href="https://github.com/njg7194"><code>@​njg7194</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6259</a>: docs: Correct typo and improve sentence structure in docs for <code>output.experimentalMinChunkSize</code> (<a href="https://github.com/millerick"><code>@​millerick</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6260</a>: fix(deps): update rust crate swc_compiler_base to v47 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6261</a>: fix(deps): lock file maintenance minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6262</a>: Avoid unnecessary cloning of the code string (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6263</a>: fix(deps): update minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6265</a>: chore(deps): lock file maintenance (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6267</a>: fix(deps): update minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6268</a>: chore(deps): update dependency eslint-plugin-unicorn to v63 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6269</a>: chore(deps): update dependency lru-cache to v11 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6270</a>: chore(deps): lock file maintenance (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6272</a>: forward NO_SIDE_EFFECTS annotations to function expressions in variable declarations (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>4.57.1</h2>
<p><em>2026-01-30</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Fix heap corruption issue in Windows (<a href="">#6251</a>)</li>
<li>Ensure exports of a dynamic import are fully included when called from a try...catch (<a href="">#6254</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="">#6251</a>: fix: Isolate and cache <code>process.report.getReport()</code> calls in a child process for robust environment detection (<a href="https://github.com/alan-agius4"><code>@​alan-agius4</code></a>, <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6252</a>: chore(deps): update dependency lru-cache to v11 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="">#6253</a>: chore(deps): lock file maintenance minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="">#6254</a>: Fully include dynamic imports in a try-catch (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ae84695</code></a> 4.59.0</li>
<li><a href=""><code>b39616e</code></a> Update audit-resolve</li>
<li><a href=""><code>c60770d</code></a> Validate bundle stays within output dir (<a href="">#6275</a>)</li>
<li><a href=""><code>33f39c1</code></a> 4.58.0</li>
<li><a href=""><code>b61c408</code></a> forward NO_SIDE_EFFECTS annotations to function expressions in variable decla...</li>
<li><a href=""><code>7f00689</code></a> Extend agent instructions</li>
<li><a href=""><code>e7b2b85</code></a> chore(deps): lock file maintenance (<a href="">#6270</a>)</li>
<li><a href=""><code>2aa5da9</code></a> fix(deps): update minor/patch updates (<a href="">#6267</a>)</li>
<li><a href=""><code>4319837</code></a> chore(deps): update dependency lru-cache to v11 (<a href="">#6269</a>)</li>
<li><a href=""><code>c3b6b4b</code></a> chore(deps): update dependency eslint-plugin-unicorn to v63 (<a href="">#6268</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/rollup/rollup/compare/v4.53.3...v4.59.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rollup&package-manager=npm_and_yarn&previous-version=4.53.3&new-version=4.59.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b8477329fdf7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.