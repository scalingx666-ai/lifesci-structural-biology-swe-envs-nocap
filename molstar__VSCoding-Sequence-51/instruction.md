# Issue

**Title:** Bump nanoid and mocha

## Description

Removes [nanoid](https://github.com/ai/nanoid). It's no longer used after updating ancestor dependency [mocha](https://github.com/mochajs/mocha). These dependencies need to be updated together.

Removes `nanoid`

Updates `mocha` from 9.2.2 to 12.0.3
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/mochajs/mocha/releases">mocha's releases</a>.</em></p>
<blockquote>
<h2>v12.0.3</h2>
<h2><a href="https://github.com/mochajs/mocha/compare/v12.0.2...v12.0.3">12.0.3</a> (2026-10-01)</h2>
<h3>🩹 Fixes</h3>
<ul>
<li>keep watching when the last test file is removed (<a href="">#6355</a>) (<a href="">921c161</a>)</li>
<li>show require() error on unsupported directory import (<a href="">#6354</a>) (<a href="">a68344f</a>)</li>
<li>support <code>--X</code> one-char aliases (<a href="">#6391</a>) (<a href="">1227939</a>)</li>
</ul>
<h3>📚 Documentation</h3>
<ul>
<li>refresh help output, fix stale links (<a href="">#6357</a>) (<a href="">bb2e69a</a>)</li>
</ul>
<h3>🧹 Chores</h3>
<ul>
<li>add --import=tsx integration test (<a href="">#6356</a>) (<a href="">3382fdd</a>)</li>
<li>touch a new file without stamping it afterwards (<a href="">#6349</a>) (<a href="">d59467a</a>)</li>
</ul>
<h2>v12.0.2</h2>
<h2><a href="https://github.com/mochajs/mocha/compare/v12.0.1...v12.0.2">12.0.2</a> (2026-09-17)</h2>
<h3>🩹 Fixes</h3>
<ul>
<li>fail nested tests on beforeEach failure (<a href="">#6292</a>) (<a href="">a75b43b</a>)</li>
<li>give CLI reporter-option precedence over config file (<a href="">#6331</a>) (<a href="">571110f</a>)</li>
<li>propagate spec file path on parallel worker death (<a href="">#6268</a>) (<a href="">55a544a</a>)</li>
<li>use find-up-simple to workaround ERR_PACKAGE_PATH_NOT_EXPORTED (<a href="">#6342</a>) (<a href="">a652ff5</a>)</li>
<li>watch existing dirs so first run starts armed (<a href="">#6263</a>) (<a href="">f5c8aca</a>)</li>
</ul>
<h3>📚 Documentation</h3>
<ul>
<li>add remaining external services (<a href="">#6316</a>) (<a href="">bfe0b5d</a>)</li>
<li>update copyright year, holder, and URLs (<a href="">#6303</a>) (<a href="">288c075</a>)</li>
</ul>
<h3>🧹 Chores</h3>
<ul>
<li>add &quot;stale branch&quot; workflow (<a href="">#6315</a>) (<a href="">ad17f9f</a>)</li>
<li>add dependency conflict detection workflow (<a href="">#6246</a>) (<a href="">ef0ae32</a>)</li>
<li>add folder for reproducing issues (<a href="">#6330</a>) (<a href="">6728030</a>)</li>
<li>add stale triage reminder for unreviewed issues (<a href="">#6314</a>) (<a href="">ee35133</a>)</li>
<li>auto-remove &quot;waiting for author&quot; label on author activity (<a href="">#6213</a>) (<a href="">dbd4322</a>)</li>
<li>convert file-unloader to ESM (<a href="">#6294</a>) (<a href="">dc73f4c</a>)</li>
<li><strong>deps:</strong> update dependency <code>@​playwright/test</code> to v1.63.0 (<a href="">#6299</a>) (<a href="">931baa5</a>)</li>
<li><strong>deps:</strong> update dependency eslint to v10.10.0 (<a href="">#6296</a>) (<a href="">3cb22d1</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/mochajs/mocha/blob/main/CHANGELOG.md">mocha's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/mochajs/mocha/compare/v12.0.2...v12.0.3">12.0.3</a> (2026-10-01)</h2>
<h3>🩹 Fixes</h3>
<ul>
<li>keep watching when the last test file is removed (<a href="">#6355</a>) (<a href="">921c161</a>)</li>
<li>show require() error on unsupported directory import (<a href="">#6354</a>) (<a href="">a68344f</a>)</li>
<li>support <code>--X</code> one-char aliases (<a href="">#6391</a>) (<a href="">1227939</a>)</li>
</ul>
<h3>📚 Documentation</h3>
<ul>
<li>refresh help output, fix stale links (<a href="">#6357</a>) (<a href="">bb2e69a</a>)</li>
</ul>
<h3>🧹 Chores</h3>
<ul>
<li>add --import=tsx integration test (<a href="">#6356</a>) (<a href="">3382fdd</a>)</li>
<li>touch a new file without stamping it afterwards (<a href="">#6349</a>) (<a href="">d59467a</a>)</li>
</ul>
<h2><a href="https://github.com/mochajs/mocha/compare/v12.0.1...v12.0.2">12.0.2</a> (2026-09-17)</h2>
<h3>🩹 Fixes</h3>
<ul>
<li>fail nested tests on beforeEach failure (<a href="">#6292</a>) (<a href="">a75b43b</a>)</li>
<li>give CLI reporter-option precedence over config file (<a href="">#6331</a>) (<a href="">571110f</a>)</li>
<li>propagate spec file path on parallel worker death (<a href="">#6268</a>) (<a href="">55a544a</a>)</li>
<li>use find-up-simple to workaround ERR_PACKAGE_PATH_NOT_EXPORTED (<a href="">#6342</a>) (<a href="">a652ff5</a>)</li>
<li>watch existing dirs so first run starts armed (<a href="">#6263</a>) (<a href="">f5c8aca</a>)</li>
</ul>
<h3>📚 Documentation</h3>
<ul>
<li>add remaining external services (<a href="">#6316</a>) (<a href="">bfe0b5d</a>)</li>
<li>update copyright year, holder, and URLs (<a href="">#6303</a>) (<a href="">288c075</a>)</li>
</ul>
<h3>🧹 Chores</h3>
<ul>
<li>add &quot;stale branch&quot; workflow (<a href="">#6315</a>) (<a href="">ad17f9f</a>)</li>
<li>add dependency conflict detection workflow (<a href="">#6246</a>) (<a href="">ef0ae32</a>)</li>
<li>add folder for reproducing issues (<a href="">#6330</a>) (<a href="">6728030</a>)</li>
<li>add stale triage reminder for unreviewed issues (<a href="">#6314</a>) (<a href="">ee35133</a>)</li>
<li>auto-remove &quot;waiting for author&quot; label on author activity (<a href="">#6213</a>) (<a href="">dbd4322</a>)</li>
<li>convert file-unloader to ESM (<a href="">#6294</a>) (<a href="">dc73f4c</a>)</li>
<li><strong>deps:</strong> update dependency <code>@​playwright/test</code> to v1.63.0 (<a href="">#6299</a>) (<a href="">931baa5</a>)</li>
<li><strong>deps:</strong> update dependency eslint to v10.10.0 (<a href="">#6296</a>) (<a href="">3cb22d1</a>)</li>
<li><strong>deps:</strong> update dependency knip to v6.35.0 (<a href="">#6324</a>) (<a href="">a2416af</a>)</li>
<li><strong>deps:</strong> update octoguide/bot action to v0.23.0 (<a href="">#6304</a>) (<a href="">bbe5a27</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>51a0cc5</code></a> chore(main): release 12.0.3 (<a href="">#6353</a>)</li>
<li><a href=""><code>1227939</code></a> fix: support <code>--X</code> one-char aliases (<a href="">#6391</a>)</li>
<li><a href=""><code>bb2e69a</code></a> docs: refresh help output, fix stale links (<a href="">#6357</a>)</li>
<li><a href=""><code>921c161</code></a> fix: keep watching when the last test file is removed (<a href="">#6355</a>)</li>
<li><a href=""><code>3382fdd</code></a> test: add --import=tsx integration test (<a href="">#6356</a>)</li>
<li><a href=""><code>a68344f</code></a> fix: show require() error on unsupported directory import (<a href="">#6354</a>)</li>
<li><a href=""><code>d59467a</code></a> test: touch a new file without stamping it afterwards (<a href="">#6349</a>)</li>
<li><a href=""><code>70db1c7</code></a> chore(main): release 12.0.2 (<a href="">#6300</a>)</li>
<li><a href=""><code>571110f</code></a> fix: give CLI reporter-option precedence over config file (<a href="">#6331</a>)</li>
<li><a href=""><code>a652ff5</code></a> fix: use find-up-simple to workaround ERR_PACKAGE_PATH_NOT_EXPORTED (<a href="">#6342</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/mochajs/mocha/compare/v9.2.2...v12.0.3">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for mocha since your current version.</p>
</details>
<br />

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/molstar/VSCoding-Sequence/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88739ed5e9ee`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.