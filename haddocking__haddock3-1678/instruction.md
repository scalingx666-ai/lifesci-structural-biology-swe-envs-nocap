# Issue

**Title:** Bump fastapi from 0.140.13 to 0.141.1

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.140.13 to 0.141.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.141.1</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix support for background tasks and headers from dependencies in <code>app.frontend()</code>. PR <a href="">#16105</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Document <code>FASTAPI_ENV</code> in FastAPI CLI guide. PR <a href="">#16104</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.141.0</h2>
<h3>Features</h3>
<ul>
<li>✨ Add <code>app.frontend(check_dir=&quot;auto&quot;)</code>, to make local development more convenient with <code>fastapi dev</code>. PR <a href="">#16102</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>95f8322</code></a> 🔖 Release version 0.141.1 (<a href="">#16106</a>)</li>
<li><a href=""><code>f137944</code></a> 📝 Update release notes</li>
<li><a href=""><code>d623544</code></a> 🐛 Fix support for background tasks and headers from dependencies in `app.fron...</li>
<li><a href=""><code>1d211b9</code></a> 📝 Update release notes</li>
<li><a href=""><code>8a1f876</code></a> 📝 Document <code>FASTAPI_ENV</code> in FastAPI CLI guide (<a href="">#16104</a>)</li>
<li><a href=""><code>c7e7b65</code></a> 🔖 Release version 0.141.0 (<a href="">#16103</a>)</li>
<li><a href=""><code>6bceb84</code></a> 📝 Update release notes</li>
<li><a href=""><code>5429fed</code></a> ✨ Add <code>app.frontend(check_dir=&quot;auto&quot;)</code>, to make local development more conven...</li>
<li>See full diff in <a href="https://github.com/fastapi/fastapi/compare/0.140.13...0.141.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.140.13&new-version=0.141.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a59c1b400fc1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.