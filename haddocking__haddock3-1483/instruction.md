# Issue

**Title:** Bump fastapi from 0.128.0 to 0.128.8

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.128.0 to 0.128.8.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.128.8</h2>
<h3>Docs</h3>
<ul>
<li>📝 Fix grammar in <code>docs/en/docs/tutorial/first-steps.md</code>. PR <a href="">#14708</a> by <a href="https://github.com/SanjanaS10"><code>@​SanjanaS10</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🔨 Tweak PDM hook script. PR <a href="">#14895</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>♻️ Update build setup for <code>fastapi-slim</code>, deprecate it, and make it only depend on <code>fastapi</code>. PR <a href="">#14894</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.128.7</h2>
<h3>Features</h3>
<ul>
<li>✨ Show a clear error on attempt to include router into itself. PR <a href="">#14258</a> by <a href="https://github.com/JavierSanchezCastro"><code>@​JavierSanchezCastro</code></a>.</li>
<li>✨ Replace <code>dict</code> by <code>Mapping</code> on <code>HTTPException.headers</code>. PR <a href="">#12997</a> by <a href="https://github.com/rijenkii"><code>@​rijenkii</code></a>.</li>
</ul>
<h3>Refactors</h3>
<ul>
<li>♻️ Simplify reading files in memory, do it sequentially instead of (fake) parallel. PR <a href="">#14884</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Use <code>dfn</code> tag for definitions instead of <code>abbr</code> in docs. PR <a href="">#14744</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>✅ Tweak comment in test to reference PR. PR <a href="">#14885</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔧 Update LLM-prompt for <code>abbr</code> and <code>dfn</code> tags. PR <a href="">#14747</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>✅ Test order for the submitted byte Files. PR <a href="">#14828</a> by <a href="https://github.com/valentinDruzhinin"><code>@​valentinDruzhinin</code></a>.</li>
<li>🔧 Configure <code>test</code> workflow to run tests with <code>inline-snapshot=review</code>. PR <a href="">#14876</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.128.6</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix <code>on_startup</code> and <code>on_shutdown</code> parameters of <code>APIRouter</code>. PR <a href="">#14873</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Translations</h3>
<ul>
<li>🌐 Update translations for zh (update-outdated). PR <a href="">#14843</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>✅ Fix parameterized tests with snapshots. PR <a href="">#14875</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.128.5</h2>
<h3>Refactors</h3>
<ul>
<li>♻️ Refactor and simplify Pydantic v2 (and v1) compatibility internal utils. PR <a href="">#14862</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bdd2005</code></a> 🔖 Release version 0.128.8</li>
<li><a href=""><code>1ed9bd4</code></a> 📝 Update release notes</li>
<li><a href=""><code>aac30fd</code></a> 🔨 Tweak PDM hook script (<a href="">#14895</a>)</li>
<li><a href=""><code>417f1ee</code></a> 📝 Update release notes</li>
<li><a href=""><code>ffb8965</code></a> ♻️ Update build setup for <code>fastapi-slim</code>, deprecate it, and make it only depe...</li>
<li><a href=""><code>93fa935</code></a> 📝 Update release notes</li>
<li><a href=""><code>f0f3e7a</code></a> 📝 Fix grammar in <code>docs/en/docs/tutorial/first-steps.md</code> (<a href="">#14708</a>)</li>
<li><a href=""><code>8f82c94</code></a> 🔖 Release version 0.128.7</li>
<li><a href=""><code>5bb3423</code></a> 📝 Update release notes</li>
<li><a href=""><code>6ce5e3e</code></a> ✅ Tweak comment in test to reference PR (<a href="">#14885</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.128.0...0.128.8">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.128.0&new-version=0.128.8)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `22d121f5a360`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.