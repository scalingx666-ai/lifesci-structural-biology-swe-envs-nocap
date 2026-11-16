# Issue

**Title:** chore(deps-dev): bump vitest from 4.0.18 to 4.1.0

## Description

Bumps [vitest](https://github.com/vitest-dev/vitest/tree/HEAD/packages/vitest) from 4.0.18 to 4.1.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitest-dev/vitest/releases">vitest's releases</a>.</em></p>
<blockquote>
<h2>v4.1.0</h2>
<p>Vitest 4.1 is out!</p>
<p>This release page lists all changes made to the project during the 4.1 beta. To get a review of all the new features, read our <a href="https://vitest.dev/blog/vitest-4-1">blog post</a>.</p>
<h3>   🚀 Features</h3>
<ul>
<li>Return a disposable from doMock()  -  by <a href="https://github.com/kirkwaiblinger"><code>@​kirkwaiblinger</code></a> in <a href="">vitest-dev/vitest#9332</a> <a href=""><!-- raw HTML omitted -->(e3e65)<!-- raw HTML omitted --></a></li>
<li>Added chai style assertions  -  by <a href="https://github.com/ronnakamoto"><code>@​ronnakamoto</code></a> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#8842</a> <a href=""><!-- raw HTML omitted -->(841df)<!-- raw HTML omitted --></a></li>
<li>Update to sinon/fake-timers v15 and add <code>setTickMode</code> to timer controls  -  by <a href="https://github.com/atscott"><code>@​atscott</code></a> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#8726</a> <a href=""><!-- raw HTML omitted -->(4b480)<!-- raw HTML omitted --></a></li>
<li>Expose matcher types  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9448</a> <a href=""><!-- raw HTML omitted -->(3e4b9)<!-- raw HTML omitted --></a></li>
<li>Add <code>toTestSpecification</code> to reported tasks  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9464</a> <a href=""><!-- raw HTML omitted -->(1a470)<!-- raw HTML omitted --></a></li>
<li>Show a warning if <code>vi.mock</code> or <code>vi.hoisted</code> are declared outside of top level of the module  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9387</a> <a href=""><!-- raw HTML omitted -->(5db54)<!-- raw HTML omitted --></a></li>
<li>Track and display expectedly failed tests (.fails) in UI and CLI  -  by <a href="https://github.com/Copilot"><code>@​Copilot</code></a>, <strong>sheremet-va</strong> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9476</a> <a href=""><!-- raw HTML omitted -->(77d75)<!-- raw HTML omitted --></a></li>
<li>Support tags  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9478</a> <a href=""><!-- raw HTML omitted -->(de7c8)<!-- raw HTML omitted --></a></li>
<li>Implement <code>aroundEach</code> and <code>aroundAll</code> hooks  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9450</a> <a href=""><!-- raw HTML omitted -->(2a8cb)<!-- raw HTML omitted --></a></li>
<li>Stabilize experimental features  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9529</a> <a href=""><!-- raw HTML omitted -->(b5fd2)<!-- raw HTML omitted --></a></li>
<li>Accept <code>new</code> or <code>all</code> in <code>--update</code> flag  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9543</a> <a href=""><!-- raw HTML omitted -->(a5acf)<!-- raw HTML omitted --></a></li>
<li>Support <code>meta</code> in test options  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9535</a> <a href=""><!-- raw HTML omitted -->(7d622)<!-- raw HTML omitted --></a></li>
<li>Support type inference with a new <code>test.extend</code> syntax  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9550</a> <a href=""><!-- raw HTML omitted -->(e5385)<!-- raw HTML omitted --></a></li>
<li>Support vite 8 beta, fix type issues in the config with different vite versions  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9587</a> <a href=""><!-- raw HTML omitted -->(99028)<!-- raw HTML omitted --></a></li>
<li>Add assertion helper to hide internal stack traces  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> and <strong>Claude Opus 4.6</strong> in <a href="">vitest-dev/vitest#9594</a> <a href=""><!-- raw HTML omitted -->(eeb0a)<!-- raw HTML omitted --></a></li>
<li>Store failure screenshots using artifacts API  -  by <a href="https://github.com/macarie"><code>@​macarie</code></a> in <a href="">vitest-dev/vitest#9588</a> <a href=""><!-- raw HTML omitted -->(24603)<!-- raw HTML omitted --></a></li>
<li>Allow <code>vitest list</code> to statically collect tests instead of running files to collect them  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9630</a> <a href=""><!-- raw HTML omitted -->(7a8e7)<!-- raw HTML omitted --></a></li>
<li>Add <code>--detect-async-leaks</code>  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9528</a> <a href=""><!-- raw HTML omitted -->(c594d)<!-- raw HTML omitted --></a></li>
<li>Implement <code>mockThrow</code> and <code>mockThrowOnce</code>  -  by <a href="https://github.com/thor-juhasz"><code>@​thor-juhasz</code></a> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9512</a> <a href=""><!-- raw HTML omitted -->(61917)<!-- raw HTML omitted --></a></li>
<li>Support <code>update: &quot;none&quot;</code> and add docs about snapshots behavior on CI  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9700</a> <a href=""><!-- raw HTML omitted -->(05f18)<!-- raw HTML omitted --></a></li>
<li>Support playwright <code>launchOptions</code> with <code>connectOptions</code>  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9702</a> <a href=""><!-- raw HTML omitted -->(f0ff1)<!-- raw HTML omitted --></a></li>
<li>Add <code>page/locator.mark</code> API to enhance playwright trace  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9652</a> <a href=""><!-- raw HTML omitted -->(d0ee5)<!-- raw HTML omitted --></a></li>
<li><strong>api</strong>:
<ul>
<li>Support tests starting or ending with <code>test</code> in <code>experimental_parseSpecification</code>  -  by <a href="https://github.com/jgillick"><code>@​jgillick</code></a> and <strong>Jeremy Gillick</strong> in <a href="">vitest-dev/vitest#9235</a> <a href=""><!-- raw HTML omitted -->(2f367)<!-- raw HTML omitted --></a></li>
<li>Add filters to <code>createSpecification</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9336</a> <a href=""><!-- raw HTML omitted -->(c8e6c)<!-- raw HTML omitted --></a></li>
<li>Expose <code>runTestFiles</code> as alternative to <code>runTestSpecifications</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9443</a> <a href=""><!-- raw HTML omitted -->(43d76)<!-- raw HTML omitted --></a></li>
<li>Add <code>allowWrite</code> and <code>allowExec</code> options to <code>api</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9350</a> <a href=""><!-- raw HTML omitted -->(20e00)<!-- raw HTML omitted --></a></li>
<li>Allow passing down test cases to <code>toTestSpecification</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9627</a> <a href=""><!-- raw HTML omitted -->(6f17d)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>browser</strong>:
<ul>
<li>Add <code>userEvent.wheel</code> API  -  by <a href="https://github.com/macarie"><code>@​macarie</code></a> in <a href="">vitest-dev/vitest#9188</a> <a href=""><!-- raw HTML omitted -->(66080)<!-- raw HTML omitted --></a></li>
<li>Add <code>filterNode</code> option to prettyDOM for filtering browser assertion error output  -  by <a href="https://github.com/Copilot"><code>@​Copilot</code></a>, <strong>sheremet-va</strong> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9475</a> <a href=""><!-- raw HTML omitted -->(d3220)<!-- raw HTML omitted --></a></li>
<li>Support playwright persistent context  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Claude Opus 4.6</strong> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9229</a> <a href=""><!-- raw HTML omitted -->(f865d)<!-- raw HTML omitted --></a></li>
<li>Added <code>detailsPanelPosition</code> option and button  -  by <a href="https://github.com/shairez"><code>@​shairez</code></a> in <a href="">vitest-dev/vitest#9525</a> <a href=""><!-- raw HTML omitted -->(c8a31)<!-- raw HTML omitted --></a></li>
<li>Use BlazeDiff instead of pixelmatch  -  by <a href="https://github.com/macarie"><code>@​macarie</code></a> in <a href="">vitest-dev/vitest#9514</a> <a href=""><!-- raw HTML omitted -->(30936)<!-- raw HTML omitted --></a></li>
<li>Add <code>findElement</code> and enable strict mode in webdriverio and preview  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9677</a> <a href=""><!-- raw HTML omitted -->(c3f37)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>cli</strong>:
<ul>
<li>Add <a href="https://github.com/bomb"><code>@​bomb</code></a>.sh/tab completions  -  by <a href="https://github.com/AmirSa12"><code>@​AmirSa12</code></a> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#8639</a> <a href=""><!-- raw HTML omitted -->(200f3)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>coverage</strong>:
<ul>
<li>Support <code>ignore start/stop</code> ignore hints  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9204</a> <a href=""><!-- raw HTML omitted -->(e59c9)<!-- raw HTML omitted --></a></li>
<li>Add <code>coverage.changed</code> option to report only changed files  -  by <a href="https://github.com/kykim00"><code>@​kykim00</code></a> and <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9521</a> <a href=""><!-- raw HTML omitted -->(1d939)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>experimental</strong>:
<ul>
<li>Add <code>onModuleRunner</code> hook to <code>worker.init</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9286</a> <a href=""><!-- raw HTML omitted -->(e977f)<!-- raw HTML omitted --></a></li>
<li>Option to disable the module runner  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> and <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9210</a> <a href=""><!-- raw HTML omitted -->(9be61)<!-- raw HTML omitted --></a></li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4150b91</code></a> chore: release v4.1.0</li>
<li><a href=""><code>1de0aa2</code></a> fix: correctly identify concurrent test during static analysis (<a href="">#9846</a>)</li>
<li><a href=""><code>c3cac1c</code></a> fix: use isAgent check, not just TTY, for watch mode (<a href="">#9841</a>)</li>
<li><a href=""><code>eab68ba</code></a> chore(deps): update all non-major dependencies (<a href="">#9824</a>)</li>
<li><a href=""><code>031f02a</code></a> fix: allow catch/finally for async assertion (<a href="">#9827</a>)</li>
<li><a href=""><code>3e9e096</code></a> feat(reporters): add <code>agent</code> reporter to reduce ai agent token usage (<a href="">#9779</a>)</li>
<li><a href=""><code>0c2c013</code></a> chore: release v4.1.0-beta.6</li>
<li><a href=""><code>8181e06</code></a> fix: <code>hideSkippedTests</code> should not hide <code>test.todo</code> (fix <a href="">#9562</a>) (<a href="">#9781</a>)</li>
<li><a href=""><code>a8216b0</code></a> fix: manual and redirect mock shouldn't <code>load</code> or <code>transform</code> original module...</li>
<li><a href=""><code>689a22a</code></a> fix(browser): types of <code>getCDPSession</code> and <code>cdp()</code> (<a href="">#9716</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitest-dev/vitest/commits/v4.1.0/packages/vitest">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vitest&package-manager=npm_and_yarn&previous-version=4.0.18&new-version=4.1.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.