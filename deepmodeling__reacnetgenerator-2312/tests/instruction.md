# Issue

**Title:** build(deps-dev): bump webpack from 5.95.0 to 5.97.1 in /reacnetgenerator/static/webpack

## Description

Bumps [webpack](https://github.com/webpack/webpack) from 5.95.0 to 5.97.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack/releases">webpack's releases</a>.</em></p>
<blockquote>
<h2>v5.97.1</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Performance regression</li>
<li>Sub define key should't be renamed when it's a defined variable</li>
</ul>
<h2>v5.97.0</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Don't crash with filesystem cache and unknown scheme</li>
<li>Generate a valid code when <code>output.iife</code> is <code>true</code> and output.library.type is <code>umd</code></li>
<li>Fixed conflict variable name with concatenate modules and runtime code</li>
<li>Merge duplicate chunks before</li>
<li>Collisions in ESM library</li>
<li>Use recursive search for versions of shared dependencies</li>
<li><strong>[WASM]</strong> Don't crash WebAssembly with Reference Types (sync and async)</li>
<li><strong>[WASM]</strong> Fixed wasm loading for sync and async webassembly</li>
<li><strong>[CSS]</strong> Don't add <code>[uniqueName]</code> to <code>localIdentName</code> when it is empty</li>
<li><strong>[CSS]</strong> Parsing strings on Windows</li>
<li><strong>[CSS]</strong> Fixed CSS local escaping</li>
</ul>
<h2>New Features</h2>
<ul>
<li>Added support for injecting debug IDs</li>
<li>Export the <code>MergeDuplicateChunks</code> plugin</li>
<li>Added universal loading for JS chunks and JS worker chunks (only ES modules)</li>
<li><strong>[WASM]</strong> Added universal loading for WebAssembly chunks (only for async WebAssembly)</li>
<li><strong>[CSS]</strong> Allow initial CSS chunks to be placed anywhere - <strong>the <code>output.cssHeadDataCompression</code> option was deleted</strong></li>
<li><strong>[CSS]</strong> Added universal loading for CSS chunks</li>
<li><strong>[CSS]</strong> Parse ICSS <code>@value</code> at-rules in CSS modules</li>
<li><strong>[CSS]</strong> Parse ICSS <code>:import</code> rules in CSS modules</li>
<li><strong>[CSS]</strong> Added the <code>url</code> and <code>import</code> options for CSS</li>
<li><strong>[CSS]</strong> Allow to import custom properties in CSS modules</li>
</ul>
<h2>Performance</h2>
<ul>
<li>Faster Queue implementation, also fixed queue iterator state in dequeue method to ensure correct behavior after item removal</li>
</ul>
<h2>v5.96.1</h2>
<h2>Bug Fixes</h2>
<ul>
<li><strong>[Types]</strong> Add <code>@types/eslint-scope</code> to dependencieS</li>
<li><strong>[Types]</strong> Fixed regression in <code>validate</code></li>
</ul>
<h2>v5.96.0</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Fixed Module Federation should track all referenced chunks</li>
<li>Handle Data URI without base64 word</li>
<li>HotUpdateChunk have correct runtime when modified with new runtime</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>3612d36</code></a> chore(release): 5.97.1</li>
<li><a href=""><code>eb7ac6f</code></a> fix: perf regression</li>
<li><a href=""><code>554be24</code></a> fix: sub define key should't be renamed when it's a defined variable</li>
<li><a href=""><code>5e0e780</code></a> refactor: issue <a href="">#19030</a></li>
<li><a href=""><code>58fb035</code></a> fix: sub define key should't be renamed when it's a defined variable</li>
<li><a href=""><code>af1fd12</code></a> perf: regression</li>
<li><a href=""><code>34f19cb</code></a> fix: package.json</li>
<li><a href=""><code>0ec7f5d</code></a> refactor: issue <a href="">#19030</a></li>
<li><a href=""><code>5e7b8a2</code></a> fix: <code>package.json</code></li>
<li><a href=""><code>644f1d1</code></a> refactor: no extra work for CSS unescaping</li>
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack/compare/v5.95.0...v5.97.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=webpack&package-manager=npm_and_yarn&previous-version=5.95.0&new-version=5.97.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eca9a3902c03`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.