# Issue

**Title:** chore(deps-dev): bump @vitest/ui from 4.0.15 to 4.0.18

## Description

Bumps [@vitest/ui](https://github.com/vitest-dev/vitest/tree/HEAD/packages/ui) from 4.0.15 to 4.0.18.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitest-dev/vitest/releases"><code>@​vitest/ui</code>'s releases</a>.</em></p>
<blockquote>
<h2>v4.0.18</h2>
<h3>   🚀 Experimental Features</h3>
<ul>
<li><strong>experimental</strong>: Add <code>onModuleRunner</code> hook to <code>worker.init</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9286</a> <a href=""><!-- raw HTML omitted -->(ea837)<!-- raw HTML omitted --></a></li>
</ul>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Use <code>meta.url</code> in <code>createRequire</code>  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9441</a> <a href=""><!-- raw HTML omitted -->(e0572)<!-- raw HTML omitted --></a></li>
<li><strong>browser</strong>: Hide injected data-testid attributes  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9503</a> <a href=""><!-- raw HTML omitted -->(f8989)<!-- raw HTML omitted --></a></li>
<li><strong>ui</strong>: Process artifact attachments when generating HTML reporter  -  by <a href="https://github.com/macarie"><code>@​macarie</code></a> in <a href="">vitest-dev/vitest#9472</a> <a href=""><!-- raw HTML omitted -->(22543)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v4.0.17...v4.0.18">View changes on GitHub</a></h5>
<h2>v4.0.17</h2>
<h3>   🚀 Experimental Features</h3>
<ul>
<li>Support openTelemetry for browser mode  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9180</a> <a href=""><!-- raw HTML omitted -->(1ec3a)<!-- raw HTML omitted --></a></li>
<li>Support TRACEPARENT and TRACESTATE environment variables for OpenTelemetry context propagation  -  by <a href="https://github.com/Copilot"><code>@​Copilot</code></a>, <strong>hi-ogawa</strong> and <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9295</a> <a href=""><!-- raw HTML omitted -->(876cb)<!-- raw HTML omitted --></a></li>
</ul>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Improve asymmetric matcher diff readability by unwrapping container matchers  -  by <a href="https://github.com/Copilot"><code>@​Copilot</code></a>, <strong>sheremet-va</strong>, <strong>hi-ogawa</strong> and <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9330</a> <a href=""><!-- raw HTML omitted -->(b2ec7)<!-- raw HTML omitted --></a></li>
<li>Improve runner error when importing outside of test context  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9335</a> <a href=""><!-- raw HTML omitted -->(2dd3d)<!-- raw HTML omitted --></a></li>
<li>Replace crypto.randomUUID to allow insecure environments (fix <a href="">#9</a>…  -  by <a href="https://github.com/plusgut"><code>@​plusgut</code></a> in <a href="">vitest-dev/vitest#9339</a> and <a href="">vitest-dev/vitest#9</a> <a href=""><!-- raw HTML omitted -->(e6a3f)<!-- raw HTML omitted --></a></li>
<li>Handle null options in <code>addEventHandler</code> <a href="">#9371</a>  -  by <a href="https://github.com/ThibautMarechal"><code>@​ThibautMarechal</code></a> in <a href="">vitest-dev/vitest#9372</a> and <a href="">vitest-dev/vitest#9371</a> <a href=""><!-- raw HTML omitted -->(40841)<!-- raw HTML omitted --></a></li>
<li>Typo in browser.provider error  -  by <a href="https://github.com/deammer"><code>@​deammer</code></a> in <a href="">vitest-dev/vitest#9394</a> <a href=""><!-- raw HTML omitted -->(4b67f)<!-- raw HTML omitted --></a></li>
<li><strong>browser</strong>:
<ul>
<li>Fix <code>process.env</code> and <code>import.meta.env</code> defines in inline project  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9239</a> <a href=""><!-- raw HTML omitted -->(b70c9)<!-- raw HTML omitted --></a></li>
<li>Fix upload File instance  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9294</a> <a href=""><!-- raw HTML omitted -->(b6778)<!-- raw HTML omitted --></a></li>
<li>Fix invalid project token for artifacts assets  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9321</a> <a href=""><!-- raw HTML omitted -->(caa7d)<!-- raw HTML omitted --></a></li>
<li>Log <code>ErrorEvent.message</code> when unhandled <code>ErrorEvent.error</code> is null  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9322</a> <a href=""><!-- raw HTML omitted -->(5d84e)<!-- raw HTML omitted --></a></li>
<li>Support <code>fileParallelism</code> on an instance  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9328</a> <a href=""><!-- raw HTML omitted -->(15006)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>coverage</strong>:
<ul>
<li>Remove unnecessary <code>istanbul-lib-source-maps</code> usage  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9344</a> <a href=""><!-- raw HTML omitted -->(b0940)<!-- raw HTML omitted --></a></li>
<li>Apply patch from <a href="">istanbuljs/istanbuljs#837</a>  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> and <strong>sapphi-red</strong> in <a href="">vitest-dev/vitest#9413</a> and <a href="">vitest-dev/vitest#837</a> <a href=""><!-- raw HTML omitted -->(e05ce)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>fsModuleCache</strong>:
<ul>
<li>Don't store importers in cache  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9422</a> <a href=""><!-- raw HTML omitted -->(75136)<!-- raw HTML omitted --></a></li>
<li>Add importers alongside importedModules  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9423</a> <a href=""><!-- raw HTML omitted -->(59f92)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>mocker</strong>:
<ul>
<li>Fix mock transform with class  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#9421</a> <a href=""><!-- raw HTML omitted -->(d390e)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>pool</strong>:
<ul>
<li>Validate environment options when reusing the worker  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9349</a> <a href=""><!-- raw HTML omitted -->(a8a88)<!-- raw HTML omitted --></a></li>
<li>Handle worker start failures gracefully  -  by <a href="https://github.com/AriPerkkio"><code>@​AriPerkkio</code></a> in <a href="">vitest-dev/vitest#9337</a> <a href=""><!-- raw HTML omitted -->(200da)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>reporter</strong>:
<ul>
<li>Report test module if it failed to run  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#9272</a> <a href=""><!-- raw HTML omitted -->(c7888)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>runner</strong>:
<ul>
<li>Respect nested test.only within describe.only  -  by <a href="https://github.com/Ujjwaljain16"><code>@​Ujjwaljain16</code></a> in <a href="">vitest-dev/vitest#9021</a> and <a href="">vitest-dev/vitest#9213</a> <a href=""><!-- raw HTML omitted -->(55d5d)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>typecheck</strong>:
<ul>
<li>Improve error message when tsc outputs help text  -  by <a href="https://github.com/Ujjwaljain16"><code>@​Ujjwaljain16</code></a> in <a href="">vitest-dev/vitest#9214</a> <a href=""><!-- raw HTML omitted -->(7b10a)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>ui</strong>:</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4d3e3c6</code></a> chore: release v4.0.18</li>
<li><a href=""><code>2254356</code></a> fix(ui): process artifact attachments when generating HTML reporter (<a href="">#9472</a>)</li>
<li><a href=""><code>dd54e94</code></a> chore: release v4.0.17</li>
<li><a href=""><code>a36c3be</code></a> refactor(browser): restructure screenshot matcher and add documentation (<a href="">#9243</a>)</li>
<li><a href=""><code>dd03316</code></a> fix(ui): detect gzip by magic numbers instead of Content-Type header in html ...</li>
<li><a href=""><code>b46d744</code></a> chore: release v4.0.16</li>
<li><a href=""><code>60642b3</code></a> fix: fix module graph UI on html reporter with headless browser mode (<a href="">#9219</a>)</li>
<li>See full diff in <a href="https://github.com/vitest-dev/vitest/commits/v4.0.18/packages/ui">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@vitest/ui&package-manager=npm_and_yarn&previous-version=4.0.15&new-version=4.0.18)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef0d092a4bfb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.