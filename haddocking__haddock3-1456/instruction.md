# Issue

**Title:** Bump fastapi from 0.121.0 to 0.123.0

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.121.0 to 0.123.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.123.0</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Cache dependencies that don't use scopes and don't have sub-dependencies with scopes. PR <a href="">#14419</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.122.1</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix hierarchical security scope propagation. PR <a href="">#5624</a> by <a href="https://github.com/kristjanvalur"><code>@​kristjanvalur</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>💅 Update CSS to explicitly use emoji font. PR <a href="">#14415</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>⬆ Bump markdown-include-variants from 0.0.5 to 0.0.6. PR <a href="">#14418</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.122.0</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Use <code>401</code> status code in security classes when credentials are missing. PR <a href="">#13786</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.
<ul>
<li>If your code depended on these classes raising the old (less correct) <code>403</code> status code, check the new docs about how to override the classes, to use the same old behavior: <a href="https://fastapi.tiangolo.com/how-to/authentication-error-status-code/">Use Old 403 Authentication Error Status Codes</a>.</li>
</ul>
</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🔧 Configure labeler to exclude files that start from underscore for <code>lang-all</code> label. PR <a href="">#14213</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>👷 Add pre-commit config with local script for permalinks. PR <a href="">#14398</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>💄 Use font Fira Code to fix display of Rich panels in docs in Windows. PR <a href="">#14387</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>👷 Add custom pre-commit CI. PR <a href="">#14397</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>⬆ Bump actions/checkout from 5 to 6. PR <a href="">#14381</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
<li>👷 Upgrade <code>latest-changes</code> GitHub Action and pin <code>actions/checkout@v5</code>. PR <a href="">#14403</a> by <a href="https://github.com/svlandeg"><code>@​svlandeg</code></a>.</li>
<li>🛠️ Add <code>add-permalinks</code> and <code>add-permalinks-page</code> to <code>scripts/docs.py</code>. PR <a href="">#14033</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>🔧 Upgrade Material for MkDocs and remove insiders. PR <a href="">#14375</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.121.3</h2>
<h3>Refactors</h3>
<ul>
<li>♻️ Make the result of <code>Depends()</code> and <code>Security()</code> hashable, as a workaround for other tools interacting with these internal parts. PR <a href="">#14372</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Upgrades</h3>
<ul>
<li>⬆️ Bump Starlette to &lt;<code>0.51.0</code>. PR <a href="">#14282</a> by <a href="https://github.com/musicinmybrain"><code>@​musicinmybrain</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Add missing hash part. PR <a href="">#14369</a> by <a href="https://github.com/nilslindemann"><code>@​nilslindemann</code></a>.</li>
<li>📝 Fix typos in code comments. PR <a href="">#14364</a> by <a href="https://github.com/Edge-Seven"><code>@​Edge-Seven</code></a>.</li>
<li>📝 Add docs for using FastAPI Cloud. PR <a href="">#14359</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f2bab95</code></a> 🔖 Release version 0.123.0</li>
<li><a href=""><code>c38e3e0</code></a> 📝 Update release notes</li>
<li><a href=""><code>7fbd304</code></a> 🐛 Cache dependencies that don't use scopes and don't have sub-dependencies wi...</li>
<li><a href=""><code>63d7a2b</code></a> 🔖 Release version 0.122.1</li>
<li><a href=""><code>7681f29</code></a> 📝 Update release notes</li>
<li><a href=""><code>378ad68</code></a> 🐛 Fix hierarchical security scope propagation (<a href="">#5624</a>)</li>
<li><a href=""><code>c6487ed</code></a> 📝 Update release notes</li>
<li><a href=""><code>62a6974</code></a> ⬆ Bump markdown-include-variants from 0.0.5 to 0.0.6 (<a href="">#14418</a>)</li>
<li><a href=""><code>9982882</code></a> 📝 Update release notes</li>
<li><a href=""><code>8ab7167</code></a> 💅 Update CSS to explicitly use emoji font (<a href="">#14415</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.121.0...0.123.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.121.0&new-version=0.123.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `11a6f64a8cbf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.