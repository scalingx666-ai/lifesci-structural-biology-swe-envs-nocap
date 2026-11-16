# Issue

**Title:** build(deps): bump astral-sh/setup-uv from 3 to 4

## Description

Bumps [astral-sh/setup-uv](https://github.com/astral-sh/setup-uv) from 3 to 4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/setup-uv/releases">astral-sh/setup-uv's releases</a>.</em></p>
<blockquote>
<h2>v4.0.0 🌈 Fail when cache local path does not exist when trying to cache</h2>
<h1>🚨 Breaking change 🚨</h1>
<p>By default, the action will now fail if caching is enabled but there is nothing to upload (the uv cache directory does not exist).
If you want to ignore this, set the <code>ignore-nothing-to-cache</code> input to <code>true</code>.</p>
<pre lang="yaml"><code>- name: Ignore nothing to cache
  uses: astral-sh/setup-uv@v3
  with:
    enable-cache: true
    ignore-nothing-to-cache: true
</code></pre>
<hr />
<p>In previous releases only an error got logged when saving the cache failed. In most cases users did not realize something was wrong with their config.</p>
<!-- raw HTML omitted -->
<h2>Changes</h2>
<h2>🚨 Breaking changes</h2>
<ul>
<li>Fail when cache local path does not exist when trying to cache <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#163</a>)</li>
</ul>
<h2>🐛 Bug fixes</h2>
<ul>
<li>Fail when cache local path does not exist when trying to cache <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#163</a>)</li>
<li>Remove working dir from cacheDependencyGlob error message <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#162</a>)</li>
</ul>
<h2>📚 Documentation</h2>
<ul>
<li>Change some formulations in README.md <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#164</a>)</li>
<li>Add comment to clarify process.exit(0) <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#161</a>)</li>
</ul>
<h2>v3.2.4 🌈 Expand <code>~</code> tilde in input paths</h2>
<p>This release adds support for expanding the <code>~</code> character to the user's home directory for the following inputs:</p>
<ul>
<li><code>cache-local-path</code></li>
<li><code>tool-dir</code></li>
<li><code>tool-bin-dir</code></li>
<li><code>cache-dependency-glob</code></li>
</ul>
<pre lang="yaml"><code>- name: Expand the tilde character
  uses: astral-sh/setup-uv@v3
  with:
    cache-local-path: &quot;~/path/to/cache&quot;
&lt;/tr&gt;&lt;/table&gt;
</code></pre>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d8db0a8</code></a> Change some formulations in README.md (<a href="">#164</a>)</li>
<li><a href=""><code>ed171c2</code></a> Fail when cache local path does not exist when trying to cache (<a href="">#163</a>)</li>
<li><a href=""><code>691a091</code></a> Remove working dir from cacheDependencyGlob error message (<a href="">#162</a>)</li>
<li><a href=""><code>9b71657</code></a> Add comment to clarify process.exit(0) (<a href="">#161</a>)</li>
<li>See full diff in <a href="https://github.com/astral-sh/setup-uv/compare/v3...v4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=astral-sh/setup-uv&package-manager=github_actions&previous-version=3&new-version=4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ab98b69b7679`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.