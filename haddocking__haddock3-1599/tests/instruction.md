# Issue

**Title:** Bump fastapi from 0.128.8 to 0.138.2

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.128.8 to 0.138.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.138.1</h2>
<h3>Refactors</h3>
<ul>
<li>♻️ Refactor Library Skills, make info easier to find for agents. PR <a href="">#15841</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>👷 Simplify pull request workflow triggers. PR <a href="">#15836</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>👷 Update issue-manager to 0.7.1. PR <a href="">#15833</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>⬆️ Update issue-manager to 0.7.0. PR <a href="">#15831</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔧 Update sponsors: Add TestMu again. PR <a href="">#15830</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔒️ Update zizmor workflow security checks. PR <a href="">#15820</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>⬆ Bump pydantic-settings from 2.14.1 to 2.14.2. PR <a href="">#15799</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
</ul>
<h2>0.138.0</h2>
<h3>Features</h3>
<ul>
<li>✨ Add support for <code>app.frontend(&quot;/&quot;, directory=&quot;dist&quot;)</code> and <code>router.frontend(&quot;/&quot;, directory=&quot;dist&quot;)</code>. PR <a href="">#15800</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.
<ul>
<li>Read the docs: <a href="https://fastapi.tiangolo.com/tutorial/frontend/">Frontend</a>.</li>
</ul>
</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Fix typo in release notes. PR <a href="">#15807</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>📝 Add <code>app.frontend()</code> instructions to Agent Library Skill. PR <a href="">#15805</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>📝 Update release notes link. PR <a href="">#15802</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>✏️ Update white space characters in bigger apps. PR <a href="">#15801</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>✏️ Fix grammar, typos, and broken links in docs. PR <a href="">#15694</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Translations</h3>
<ul>
<li>🌐 Enable Hindi docs translations. PR <a href="">#15554</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🐛 Fix failing test, update format for raised errors. PR <a href="">#15804</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>👷 Fix test-alls-green. PR <a href="">#15803</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔧 Enable checking <code>release-notes.md</code> for typos. PR <a href="">#15796</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>📝 Tweak wording about deploying to FastAPI Cloud. PR <a href="">#15793</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔨 Use <code>gpt-5.5</code> model in <code>translate.py</code>, specify <code>-chat</code> to avoid warnings. PR <a href="">#15792</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.137.2</h2>
<h3>Features</h3>
<ul>
<li>✨ Add <code>iter_route_contexts()</code> for advanced use cases that used to use <code>router.routes</code> (e.g. Jupyverse). PR <a href="">#15785</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Translations</h3>
<ul>
<li>🌐 Fix broken Markdown in Korean custom response docs. PR <a href="">#15774</a> by <a href="https://github.com/kooqooo"><code>@​kooqooo</code></a>.</li>
<li>🌐 Update translations for fr (update-outdated). PR <a href="">#15761</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🌐 Update translations for zh-hant (update-outdated). PR <a href="">#15760</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>702fea8</code></a> 🔖 Release version 0.138.2 (<a href="">#15864</a>)</li>
<li><a href=""><code>6466865</code></a> 📝 Update release notes</li>
<li><a href=""><code>b790e14</code></a> ♻️ Make <code>app.frontend()</code> return 404 for methods other than <code>GET</code> or <code>HEAD</code> wi...</li>
<li><a href=""><code>c2708d9</code></a> 📝 Update release notes</li>
<li><a href=""><code>403b1fa</code></a> 🔧 Update sponsors: remove Stainless (<a href="">#15862</a>)</li>
<li><a href=""><code>1929ac2</code></a> 📝 Update release notes</li>
<li><a href=""><code>cba4158</code></a> ♻️ Refactor how sponsors data is handled for banners (<a href="">#15852</a>)</li>
<li><a href=""><code>b90c49a</code></a> 🔖 Release version 0.138.1 (<a href="">#15842</a>)</li>
<li><a href=""><code>1f2f3df</code></a> 📝 Update release notes</li>
<li><a href=""><code>0af003a</code></a> ♻️ Refactor Library Skills, make info easier to find for agents (<a href="">#15841</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.128.8...0.138.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.128.8&new-version=0.138.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef3e38c61a3a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.