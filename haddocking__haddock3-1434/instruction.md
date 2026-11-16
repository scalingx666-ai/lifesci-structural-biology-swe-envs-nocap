# Issue

**Title:** Bump fastapi from 0.116.1 to 0.120.4

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.116.1 to 0.120.4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.120.4</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix security schemes in OpenAPI when added at the top level app. PR <a href="">#14266</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.120.3</h2>
<h3>Refactors</h3>
<ul>
<li>♻️ Reduce internal cyclic recursion in dependencies, from 2 functions calling each other to 1 calling itself. PR <a href="">#14256</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>♻️ Refactor internals of dependencies, simplify code and remove <code>get_param_sub_dependant</code>. PR <a href="">#14255</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>♻️ Refactor internals of dependencies, simplify using dataclasses. PR <a href="">#14254</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Docs</h3>
<ul>
<li>📝 Update note for untranslated pages. PR <a href="">#14257</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.120.2</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix separation of schemas with nested models introduced in 0.119.0. PR <a href="">#14246</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🔧 Add sponsor: SerpApi. PR <a href="">#14248</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
<li>⬆ Bump actions/download-artifact from 5 to 6. PR <a href="">#14236</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
<li>⬆ [pre-commit.ci] pre-commit autoupdate. PR <a href="">#14237</a> by <a href="https://github.com/apps/pre-commit-ci"><code>@​pre-commit-ci[bot]</code></a>.</li>
<li>⬆ Bump actions/upload-artifact from 4 to 5. PR <a href="">#14235</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
</ul>
<h2>0.120.1</h2>
<h3>Upgrades</h3>
<ul>
<li>⬆️ Bump Starlette to &lt;<code>0.50.0</code>. PR <a href="">#14234</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>🔧 Add <code>license</code> and <code>license-files</code> to <code>pyproject.toml</code>, remove <code>License</code> from <code>classifiers</code>. PR <a href="">#14230</a> by <a href="https://github.com/YuriiMotov"><code>@​YuriiMotov</code></a>.</li>
</ul>
<h2>0.120.0</h2>
<p>There are no major nor breaking changes in this release. ☕️</p>
<p>The internal reference documentation now uses <code>annotated_doc.Doc</code> instead of <code>typing_extensions.Doc</code>, this adds a new (very small) dependency on <a href="https://github.com/fastapi/annotated-doc"><code>annotated-doc</code></a>, a package made just to provide that <code>Doc</code> documentation utility class.</p>
<p>I would expect <code>typing_extensions.Doc</code> to be deprecated and then removed at some point from <code>typing_extensions</code>, for that reason there's the new <code>annotated-doc</code> micro-package. If you are curious about this, you can read more in the repo for <a href="https://github.com/fastapi/annotated-doc"><code>annotated-doc</code></a>.</p>
<p>This new version <code>0.120.0</code> only contains that transition to the new home package for that utility class <code>Doc</code>.</p>
<h3>Translations</h3>
<ul>
<li>🌐 Sync German docs. PR <a href="">#14188</a> by <a href="https://github.com/nilslindemann"><code>@​nilslindemann</code></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>fad35ef</code></a> 🔖 Release version 0.120.4</li>
<li><a href=""><code>4d57c13</code></a> 📝 Update release notes</li>
<li><a href=""><code>496de18</code></a> 🐛 Fix security schemes in OpenAPI when added at the top level app (<a href="">#14266</a>)</li>
<li><a href=""><code>2cf04ee</code></a> 🔖 Release version 0.120.3</li>
<li><a href=""><code>ec00f5a</code></a> 📝 Update release notes</li>
<li><a href=""><code>8b46d88</code></a> 📝 Update note for untranslated pages (<a href="">#14257</a>)</li>
<li><a href=""><code>17fcbbe</code></a> 📝 Update release notes</li>
<li><a href=""><code>dcfb8b9</code></a> ♻️ Reduce internal cyclic recursion in dependencies, from 2 functions calling...</li>
<li><a href=""><code>1fc586c</code></a> 📝 Update release notes</li>
<li><a href=""><code>bb88a0f</code></a> ♻️ Refactor internals of dependencies, simplify code and remove `get_param_su...</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.116.1...0.120.4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.116.1&new-version=0.120.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c1fc0fef778`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.