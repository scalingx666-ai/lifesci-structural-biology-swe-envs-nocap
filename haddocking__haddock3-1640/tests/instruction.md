# Issue

**Title:** Bump fastapi from 0.138.2 to 0.140.13

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.138.2 to 0.140.13.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.140.13</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix <code>status_code</code> being ignored for SSE and JSONL streaming endpoints. PR <a href="">#15937</a> by <a href="https://github.com/SAURABHSALVE"><code>@​SAURABHSALVE</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Fix <code>format_sse_event</code> docstring rendering of <code>\n\n</code> terminator. PR <a href="">#15613</a> by <a href="https://github.com/AshNicolus"><code>@​AshNicolus</code></a>.</li>
<li>📝 Add API reference page for fastapi.sse. PR <a href="">#15930</a> by <a href="https://github.com/SAURABHSALVE"><code>@​SAURABHSALVE</code></a>.</li>
</ul>
<h2>0.140.12</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix line splitting in <code>format_sse_event</code> to comply with SSE spec. PR <a href="">#15515</a> by <a href="https://github.com/Zawwarsami16"><code>@​Zawwarsami16</code></a>.</li>
</ul>
<h2>0.140.11</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix <code>response_model_*</code> params ignored for non-generator endpoints with <code>Iterable[..]</code> return type. PR <a href="">#15093</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.140.10</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix handling sequences with nested Annotated types. PR <a href="">#14874</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🐛 Accept any base test failure as regression. PR <a href="">#16092</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🐛 Preserve pytest exit code in regression check. PR <a href="">#16091</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>✅ Test PR regressions against base code. PR <a href="">#16090</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.140.9</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix <code>exclude_defaults</code> not propagated to dict keys and values in <code>jsonable_encoder</code>. PR <a href="">#16043</a> by <a href="https://github.com/MBGrao"><code>@​MBGrao</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>⬆ Bump gitpython from 3.1.50 to 3.1.54. PR <a href="">#16047</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
<li>⬆ Bump pymdown-extensions from 10.21.3 to 11.0. PR <a href="">#16048</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
<li>⬆ Bump pyasn1 from 0.6.3 to 0.6.4. PR <a href="">#16045</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
</ul>
<h2>0.140.8</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix stream item type lost when using <code>include_router()</code>. PR <a href="">#15077</a> by <a href="https://github.com/alex-raw"><code>@​alex-raw</code></a>.</li>
</ul>
<h2>0.140.6</h2>
<h3>Refactors</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>628663f</code></a> 🔖 Release version 0.140.13 (<a href="">#16096</a>)</li>
<li><a href=""><code>0b54fd0</code></a> 📝 Update release notes</li>
<li><a href=""><code>e92a0dc</code></a> 🐛 Fix <code>status_code</code> being ignored for SSE and JSONL streaming endpoints (<a href="">#15937</a>)</li>
<li><a href=""><code>6215d8a</code></a> 📝 Update release notes</li>
<li><a href=""><code>12242c4</code></a> 📝 Fix <code>format_sse_event</code> docstring rendering of <code>\n\n</code> terminator (<a href="">#15613</a>)</li>
<li><a href=""><code>70a8f3d</code></a> 📝 Update release notes</li>
<li><a href=""><code>4f0152c</code></a> 📝 Add API reference page for fastapi.sse (<a href="">#15930</a>)</li>
<li><a href=""><code>5f25505</code></a> 🔖 Release version 0.140.12 (<a href="">#16095</a>)</li>
<li><a href=""><code>76e2c83</code></a> 📝 Update release notes</li>
<li><a href=""><code>0f3e7bd</code></a> 🐛 Fix line splitting in <code>format_sse_event</code> to comply with SSE spec (<a href="">#15515</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.138.2...0.140.13">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.138.2&new-version=0.140.13)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80e851f9c5f3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.