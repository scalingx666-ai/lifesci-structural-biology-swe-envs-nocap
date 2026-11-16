# Issue

**Title:** chore(deps-dev): bump vitest and @vitest/ui from 4.1.11 to 5.1.0

## Description

Bumps [vitest](https://github.com/vitest-dev/vitest/tree/HEAD/packages/vitest) from 4.1.11 to 5.0.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitest-dev/vitest/releases">vitest's releases</a>.</em></p>
<blockquote>
<h2>v5.0.5</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Keep vite default <code>fs.deny</code> with api token file  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>Claude Opus 5.5</strong> in <a href="">vitest-dev/vitest#11578</a> <a href=""><!-- raw HTML omitted -->(28dc1)<!-- raw HTML omitted --></a></li>
<li>Handle quoted file names in <code>--changed</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11583</a> <a href=""><!-- raw HTML omitted -->(14921)<!-- raw HTML omitted --></a></li>
<li>Add <code>data</code> to the <code>import.meta.hot</code> stub  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11590</a> <a href=""><!-- raw HTML omitted -->(3a828)<!-- raw HTML omitted --></a></li>
<li>Set <code>skip</code> in <code>skipIf</code>, ignore <code>undefined</code> options  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11591</a> <a href=""><!-- raw HTML omitted -->(d523a)<!-- raw HTML omitted --></a></li>
<li>Skip builtin loading in async leak detector  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11598</a> <a href=""><!-- raw HTML omitted -->(fe86a)<!-- raw HTML omitted --></a></li>
<li>Keep the import frame in native loader errors  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11599</a> <a href=""><!-- raw HTML omitted -->(9697b)<!-- raw HTML omitted --></a></li>
<li>Run hook cleanups when a later hook fails  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11605</a> <a href=""><!-- raw HTML omitted -->(6c5a4)<!-- raw HTML omitted --></a></li>
<li>Release mocks of finished test files  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11607</a> <a href=""><!-- raw HTML omitted -->(e9c3d)<!-- raw HTML omitted --></a></li>
<li>Abort all running tests on cancel  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11606</a> <a href=""><!-- raw HTML omitted -->(6621a)<!-- raw HTML omitted --></a></li>
<li><strong>browser</strong>:
<ul>
<li>Ignore synthetic pagehide events  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11582</a> <a href=""><!-- raw HTML omitted -->(ca081)<!-- raw HTML omitted --></a></li>
<li>Run plugin buildStart on server creation  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11593</a> <a href=""><!-- raw HTML omitted -->(ea611)<!-- raw HTML omitted --></a></li>
<li>Drop late connections of closed sessions  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11600</a> <a href=""><!-- raw HTML omitted -->(f161e)<!-- raw HTML omitted --></a></li>
<li>Wait 30s for the browser to close  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11601</a> <a href=""><!-- raw HTML omitted -->(6498b)<!-- raw HTML omitted --></a></li>
<li>Run global setup once with instances  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11596</a> <a href=""><!-- raw HTML omitted -->(8dd67)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>reporter</strong>:
<ul>
<li>End reason <code>&amp;;failed&amp;;</code> on worker crash  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#11568</a> <a href=""><!-- raw HTML omitted -->(6ae8e)<!-- raw HTML omitted --></a></li>
</ul>
</li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v5.0.4...v5.0.5">View changes on GitHub</a></h5>
<h2>v5.0.4</h2>
<h3>   🚀 Features</h3>
<ul>
<li><strong>experimental</strong>:
<ul>
<li>Tag cache directories with CACHEDIR.TAG  -  by <a href="https://github.com/lifeiscontent"><code>@​lifeiscontent</code></a> in <a href="">vitest-dev/vitest#11461</a> <a href=""><!-- raw HTML omitted -->(a8ea3)<!-- raw HTML omitted --></a></li>
<li>Support <code>test.ui.theme</code> option  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11499</a> <a href=""><!-- raw HTML omitted -->(1da66)<!-- raw HTML omitted --></a></li>
<li>Highlight selector multiple matches in trace view  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>Claude Opus 5.5</strong> in <a href="">vitest-dev/vitest#11489</a> <a href=""><!-- raw HTML omitted -->(5abba)<!-- raw HTML omitted --></a></li>
<li>Print how many tests were affected and a total when running <code>--changed</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11424</a> <a href=""><!-- raw HTML omitted -->(a2336)<!-- raw HTML omitted --></a></li>
<li>Add an option to cache dependencies instead of statically parsing them  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11515</a> <a href=""><!-- raw HTML omitted -->(c0601)<!-- raw HTML omitted --></a></li>
<li>Add fit and zoom controls to trace viewer  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>Claude Opus 5.5</strong> in <a href="">vitest-dev/vitest#11490</a> <a href=""><!-- raw HTML omitted -->(f5dd9)<!-- raw HTML omitted --></a></li>
</ul>
</li>
</ul>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Fail the run on git and location filter errors  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11430</a> <a href=""><!-- raw HTML omitted -->(30d03)<!-- raw HTML omitted --></a></li>
<li>Enable fsModuleCache by default  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11435</a> <a href=""><!-- raw HTML omitted -->(ad208)<!-- raw HTML omitted --></a></li>
<li>Track project files and mocks with --changed  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11432</a> <a href=""><!-- raw HTML omitted -->(b0f2b)<!-- raw HTML omitted --></a></li>
<li>Refactor caching, fix <code>:</code> in project and change the shape of <code>results</code> cache  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11453</a> <a href=""><!-- raw HTML omitted -->(9673c)<!-- raw HTML omitted --></a></li>
<li>Keep full <code>$</code> string values when <code>taskTitleValueFormatTruncate</code> is 0  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>Claude Opus 5.5</strong> in <a href="">vitest-dev/vitest#11485</a> <a href=""><!-- raw HTML omitted -->(4f7e1)<!-- raw HTML omitted --></a></li>
<li>Resolve node builtins in client environments  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11417</a> <a href=""><!-- raw HTML omitted -->(56b31)<!-- raw HTML omitted --></a></li>
<li>Fix module graph builtin externals after <a href="">#11421</a>  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>Claude Opus 5.5</strong> in <a href="">vitest-dev/vitest#11491</a> and <a href="">vitest-dev/vitest#11421</a> <a href=""><!-- raw HTML omitted -->(008e1)<!-- raw HTML omitted --></a></li>
<li>Wrap module mocks during in-source testing  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11505</a> <a href=""><!-- raw HTML omitted -->(36d19)<!-- raw HTML omitted --></a></li>
<li>Handle line endings in snapshot  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11522</a> <a href=""><!-- raw HTML omitted -->(4c468)<!-- raw HTML omitted --></a></li>
<li>Respect root in projects  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11521</a> <a href=""><!-- raw HTML omitted -->(26642)<!-- raw HTML omitted --></a></li>
<li>Resolve mocks in directories with spaces  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#11539</a> <a href=""><!-- raw HTML omitted -->(caaef)<!-- raw HTML omitted --></a></li>
<li><strong>api</strong>:
<ul>
<li>Publish the api token atomically  -  by <a href="https://github.com/umairnawaz333"><code>@​umairnawaz333</code></a> in <a href="">vitest-dev/vitest#11323</a> <a href=""><!-- raw HTML omitted -->(6f990)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>browser</strong>:</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>7a825db</code></a> chore: release v5.0.5 (<a href="">#11609</a>)</li>
<li><a href=""><code>6621a72</code></a> fix: abort all running tests on cancel (<a href="">#11606</a>)</li>
<li><a href=""><code>e9c3d72</code></a> fix: release mocks of finished test files (<a href="">#11607</a>)</li>
<li><a href=""><code>8dd67c2</code></a> fix(browser): run global setup once with instances (<a href="">#11596</a>)</li>
<li><a href=""><code>6c5a447</code></a> fix: run hook cleanups when a later hook fails (<a href="">#11605</a>)</li>
<li><a href=""><code>9697b38</code></a> fix: keep the import frame in native loader errors (<a href="">#11599</a>)</li>
<li><a href=""><code>6498b66</code></a> fix(browser): wait 30s for the browser to close (<a href="">#11601</a>)</li>
<li><a href=""><code>f161e6d</code></a> fix(browser): drop late connections of closed sessions (<a href="">#11600</a>)</li>
<li><a href=""><code>fe86a64</code></a> fix: skip builtin loading in async leak detector (<a href="">#11598</a>)</li>
<li><a href=""><code>6ae8e89</code></a> fix(reporter): end reason <code>'failed'</code> on worker crash (<a href="">#11568</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitest-dev/vitest/commits/v5.0.5/packages/vitest">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vitest&package-manager=npm_and_yarn&previous-version=4.1.11&new-version=5.0.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `094acbd7ef9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.