# Issue

**Title:** chore(deps-dev): bump @vitest/ui from 4.1.0 to 4.1.10

## Description

Bumps [@vitest/ui](https://github.com/vitest-dev/vitest/tree/HEAD/packages/ui) from 4.1.0 to 4.1.10.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitest-dev/vitest/releases">@​vitest/ui's releases</a>.</em></p>
<blockquote>
<h2>v4.1.10</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li><strong>browser</strong>: Check fs access in builtin commands [backport to v4]  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Hiroshi Ogawa</strong> and <strong>OpenCode (claude-opus-4-8)</strong> in <a href="">vitest-dev/vitest#10680</a> <a href=""><!-- raw HTML omitted -->(5c18d)<!-- raw HTML omitted --></a></li>
<li><strong>vm</strong>: Fix external module resolve error with deps optimizer query for encoded URI [backport to v4]  -  by <a href="https://github.com/SveLil"><code>@​SveLil</code></a> and <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#10661</a> <a href=""><!-- raw HTML omitted -->(bae52)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v4.1.9...v4.1.10">View changes on GitHub</a></h5>
<h2>v4.1.9</h2>
<h3>🐞 Bug Fixes</h3>
<ul>
<li>Fix <code>importOriginal</code> with optimizer and query import [backport to v4] - by <strong>Hiroshi Ogawa</strong>, <strong>David Harris</strong>, <strong>Codex</strong>and <strong>Vladimir</strong> in <a href="">vitest-dev/vitest#10546</a> <a href=""><!-- raw HTML omitted -->(a5180)<!-- raw HTML omitted --></a></li>
<li><strong>browser</strong>:
<ul>
<li>Wait for orchestrator readiness before resolving browser sessions [backport to v4] - by <strong>Vladimir</strong> and <strong>Séamus O'Connor</strong> in <a href="">vitest-dev/vitest#10555</a> <a href=""><!-- raw HTML omitted -->(7fb29)<!-- raw HTML omitted --></a></li>
<li>Wait for iframe tester readiness before preparing  [backport to v4] - by <strong>Vladimir</strong> and <strong>Séamus O'Connor</strong> in <a href="">vitest-dev/vitest#10497</a> and <a href="">vitest-dev/vitest#10556</a> <a href=""><!-- raw HTML omitted -->(fbc62)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>mocker</strong>:
<ul>
<li>Hoist vi.mock() for vite-plus/test imports [backport to v4] - by <strong>Hiroshi Ogawa</strong>, <strong>LongYinan</strong>, <strong>Claude Opus 4.8</strong> and <strong>Vladimir</strong> in <a href="">vitest-dev/vitest#10548</a> <a href=""><!-- raw HTML omitted -->(2c955)<!-- raw HTML omitted --></a></li>
</ul>
</li>
<li><strong>pool</strong>:
<ul>
<li>Prevent test run hang on worker crash  [backport to v4] - by <strong>Ari Perkkiö</strong> and <strong>Jattioui Ismail</strong> in <a href="">vitest-dev/vitest#10543</a> and <a href="">vitest-dev/vitest#10564</a> <a href=""><!-- raw HTML omitted -->(934b0)<!-- raw HTML omitted --></a></li>
</ul>
</li>
</ul>
<h5><a href="https://github.com/vitest-dev/vitest/compare/v4.1.8...v4.1.9">View changes on GitHub</a></h5>
<h2>v4.1.8</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li><strong>browser</strong>:
<ul>
<li>Disable client <code>cdp</code> API when <code>allowWrite/allowExec: false</code> [backport to v4]  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> and <strong>Codex</strong> in <a href="">vitest-dev/vitest#10450</a> <a href=""><!-- raw HTML omitted -->(e4067)<!-- raw HTML omitted --></a></li>
<li>Remove orphaned Playwright route when same module is mocked via multiple ids [backport to v4]  -  by <a href="https://github.com/toxik"><code>@​toxik</code></a> and <a href="https://github.com/Zelys-DFKH"><code>@​Zelys-DFKH</code></a> in <a href="">vitest-dev/vitest#10474</a> <a href=""><!-- raw HTML omitted -->(675b4)<!-- raw HTML omitted --></a></li>
</ul>
</li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v4.1.7...v4.1.8">View changes on GitHub</a></h5>
<h2>v4.1.7</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li><strong>runner</strong>: Limit concurrency per task branch in addition to per leaf callbacks (backport)  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#10384</a> <a href=""><!-- raw HTML omitted -->(4f0f2)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v4.1.6...v4.1.7">View changes on GitHub</a></h5>
<h2>v4.1.6</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li><strong>browser</strong>: Provide project reference in <code>ToMatchScreenshotResolvePath</code>  -  by <a href="https://github.com/macarie"><code>@​macarie</code></a> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#10138</a> <a href=""><!-- raw HTML omitted -->(31882)<!-- raw HTML omitted --></a></li>
<li>Global <code>sequence.concurrent: true</code> with top-level <code>test(..., { concurrent: false })</code> + depreacte <code>sequential</code> test API and options  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a>, <strong>Codex</strong> and <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#10196</a> <a href=""><!-- raw HTML omitted -->(2847d)<!-- raw HTML omitted --></a></li>
<li><strong>browser</strong>: Simplify orchestrator otel carrier  -  by <a href="https://github.com/hi-ogawa"><code>@​hi-ogawa</code></a> in <a href="">vitest-dev/vitest#10285</a> <a href=""><!-- raw HTML omitted -->(18af9)<!-- raw HTML omitted --></a></li>
</ul>
<h3>   🏎 Performance</h3>
<ul>
<li>Stringify diff objects only once  -  by <a href="https://github.com/sheremet-va"><code>@​sheremet-va</code></a> in <a href="">vitest-dev/vitest#10276</a> <a href=""><!-- raw HTML omitted -->(9f7b1)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/vitest-dev/vitest/compare/v4.1.5...v4.1.6">View changes on GitHub</a></h5>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>db616d2</code></a> chore: release v4.1.10 (<a href="">#10718</a>)</li>
<li><a href=""><code>a7a61e7</code></a> chore: release v4.1.9 (<a href="">#10598</a>)</li>
<li><a href=""><code>e61f2dd</code></a> chore: release v4.1.8</li>
<li><a href=""><code>a09d472</code></a> chore: release v4.1.7</li>
<li><a href=""><code>a8fd24c</code></a> chore: release v4.1.6</li>
<li><a href=""><code>e399846</code></a> chore: release v4.1.5</li>
<li><a href=""><code>596f739</code></a> fix: project color label on html reporter (<a href="">#10142</a>)</li>
<li><a href=""><code>f1b1f6c</code></a> fix(ui): fix jsx/tsx syntax highlight (<a href="">#10152</a>)</li>
<li><a href=""><code>ac04bac</code></a> chore: release v4.1.4</li>
<li><a href=""><code>d4fbb5c</code></a> feat(experimental): support aria snapshot (<a href="">#9668</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitest-dev/vitest/commits/v4.1.10/packages/ui">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@vitest/ui&package-manager=npm_and_yarn&previous-version=4.1.0&new-version=4.1.10)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `846beffa8c70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.