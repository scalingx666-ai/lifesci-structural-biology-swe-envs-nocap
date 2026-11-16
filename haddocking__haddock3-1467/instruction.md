# Issue

**Title:** Bump fastapi from 0.123.0 to 0.128.0

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.123.0 to 0.128.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.128.0</h2>
<h3>Breaking Changes</h3>
<ul>
<li>➖ Drop support for <code>pydantic.v1</code>. PR <a href="">#14609</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>✅ Run performance tests only on Pydantic v2. PR <a href="">#14608</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.127.1</h2>
<h3>Refactors</h3>
<ul>
<li>🔊 Add a custom <code>FastAPIDeprecationWarning</code>. PR <a href="">#14605</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Add documentary to website. PR <a href="">#14600</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Translations</h3>
<ul>
<li>🌐 Update translations for de (update-outdated). PR <a href="">#14602</a> by <a href="https://github.com/nilslindemann"><code>@​nilslindemann</code></a>.</li>
<li>🌐 Update translations for de (update-outdated). PR <a href="">#14581</a> by <a href="https://github.com/nilslindemann"><code>@​nilslindemann</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🔧 Update pre-commit to use local Ruff instead of hook. PR <a href="">#14604</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>✅ Add missing tests for code examples. PR <a href="">#14569</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>👷 Remove <code>lint</code> job from <code>test</code> CI workflow. PR <a href="">#14593</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
<li>👷 Update secrets check. PR <a href="">#14592</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>👷 Run CodSpeed tests in parallel to other tests to speed up CI. PR <a href="">#14586</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔨 Update scripts and pre-commit to autofix files. PR <a href="">#14585</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.127.0</h2>
<h3>Breaking Changes</h3>
<ul>
<li>🔊 Add deprecation warnings when using <code>pydantic.v1</code>. PR <a href="">#14583</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Translations</h3>
<ul>
<li>🔧 Add LLM prompt file for Korean, generated from the existing translations. PR <a href="">#14546</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>🔧 Add LLM prompt file for Japanese, generated from the existing translations. PR <a href="">#14545</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>⬆️ Upgrade OpenAI model for translations to gpt-5.2. PR <a href="">#14579</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.126.0</h2>
<h3>Upgrades</h3>
<ul>
<li>➖ Drop support for Pydantic v1, keeping short temporary support for Pydantic v2's <code>pydantic.v1</code>. PR <a href="">#14575</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8322a44</code></a> 🔖 Release version 0.128.0</li>
<li><a href=""><code>4b2cfcf</code></a> 📝 Update release notes</li>
<li><a href=""><code>e300630</code></a> ➖ Drop support for <code>pydantic.v1</code> (<a href="">#14609</a>)</li>
<li><a href=""><code>1b3bea8</code></a> 📝 Update release notes</li>
<li><a href=""><code>34e8841</code></a> ✅ Run performance tests only on Pydantic v2 (<a href="">#14608</a>)</li>
<li><a href=""><code>cd90c78</code></a> 🔖 Release version 0.127.1</li>
<li><a href=""><code>93f4dfd</code></a> 📝 Update release notes</li>
<li><a href=""><code>535b5da</code></a> 🔊 Add a custom <code>FastAPIDeprecationWarning</code> (<a href="">#14605</a>)</li>
<li><a href=""><code>6b53786</code></a> 📝 Update release notes</li>
<li><a href=""><code>d98f4eb</code></a> 🔧 Update pre-commit to use local Ruff instead of hook (<a href="">#14604</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.123.0...0.128.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.123.0&new-version=0.128.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7642688e6e64`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.