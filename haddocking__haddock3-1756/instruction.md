# Issue

**Title:** Bump fastapi from 0.141.1 to 0.162.0

## Description

Bumps [fastapi](https://github.com/fastapi/fastapi) from 0.141.1 to 0.162.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fastapi/fastapi/releases">fastapi's releases</a>.</em></p>
<blockquote>
<h2>0.162.0</h2>
<p>Omitted <code>bool</code> and <code>bool | None</code> form fields now use their declared defaults or produce missing-field errors, consistent with other fields and Pydantic behavior. FastAPI no longer infers <code>False</code> for omitted booleans. This applies to individual form parameters, form models, and unions of form models.</p>
<p>Omitted boolean model fields are excluded from <code>model_dump(exclude_unset=True)</code>, and their defaults no longer count as submitted fields during union selection. Default factories and <code>validate_default</code> follow the usual rules.</p>
<p>For HTML checkboxes, declare a boolean with a default of <code>False</code>. See <a href="https://fastapi.tiangolo.com/tutorial/request-forms/#boolean-form-fields">Boolean Form Fields</a>.</p>
<h3>Breaking Changes</h3>
<ul>
<li>🐛 Restore default handling for omitted boolean form fields. PR <a href="">#16605</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.161.1</h2>
<h3>Fixes</h3>
<ul>
<li>🐛 Fix OpenAPI schemas for standalone nullable form unions. PR <a href="">#16598</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.161.0</h2>
<h3>Features</h3>
<ul>
<li>✨ Add support for combining unions of form models. PR <a href="">#16596</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.160.0</h2>
<p>Query, header, cookie, and form parameter models now apply their <code>extra</code> configuration to all submitted fields in the same parameter location, consistent with Pydantic behavior. This includes fields declared in other models, individual parameters, or dependencies, which were previously excluded.</p>
<p>With <code>extra=&quot;forbid&quot;</code>, fields outside the model are rejected even if another parameter declares them. With <code>extra=&quot;allow&quot;</code>, those fields are included as model extras. With the default <code>extra=&quot;ignore&quot;</code>, they are ignored.</p>
<h3>Breaking Changes</h3>
<ul>
<li>🐛 Apply each parameter model's <code>extra</code> configuration to sibling fields. PR <a href="">#16594</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h3>Internal</h3>
<ul>
<li>⬆ Bump certifi from 2026.1.4 to 2026.10.19. PR <a href="">#16571</a> by <a href="https://github.com/apps/dependabot"><code>@​dependabot[bot]</code></a>.</li>
</ul>
<h2>0.159.1</h2>
<h3>Features</h3>
<ul>
<li>✨ Add support for optional unions of form models. PR <a href="">#16586</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.159.0</h2>
<h3>Features</h3>
<ul>
<li>✨ Add support for optional query, header, and cookie parameter models. PR <a href="">#16584</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.158.2</h2>
<h3>Features</h3>
<ul>
<li>✨ Add support for optional form models. PR <a href="">#16582</a> by <a href="https://github.com/tiangolo"><code>@​tiangolo</code></a>.</li>
</ul>
<h2>0.158.1</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>7a0a3f0</code></a> 🔖 Release version 0.162.0 (<a href="">#16606</a>)</li>
<li><a href=""><code>b56f7c6</code></a> 📝 Update release notes</li>
<li><a href=""><code>f02ef49</code></a> 🐛 Restore default handling for omitted boolean form fields (<a href="">#16605</a>)</li>
<li><a href=""><code>69ddc2b</code></a> 🔖 Release version 0.161.1 (<a href="">#16599</a>)</li>
<li><a href=""><code>0cafa07</code></a> 📝 Update release notes</li>
<li><a href=""><code>f90d036</code></a> 🐛 Fix OpenAPI schemas for standalone nullable form unions (<a href="">#16598</a>)</li>
<li><a href=""><code>80c8742</code></a> 🔖 Release version 0.161.0 (<a href="">#16597</a>)</li>
<li><a href=""><code>b105209</code></a> 📝 Update release notes</li>
<li><a href=""><code>e42ac0a</code></a> ✨ Add support for combining unions of form models (<a href="">#16596</a>)</li>
<li><a href=""><code>addd077</code></a> 🔖 Release version 0.160.0 (<a href="">#16595</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/fastapi/fastapi/compare/0.141.1...0.162.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fastapi&package-manager=pip&previous-version=0.141.1&new-version=0.162.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ae72d8a0e575`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.