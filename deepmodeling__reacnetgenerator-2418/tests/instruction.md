# Issue

**Title:** build(deps): bump astral-sh/setup-uv from 6 to 7

## Description

Bumps [astral-sh/setup-uv](https://github.com/astral-sh/setup-uv) from 6 to 7.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/setup-uv/releases">astral-sh/setup-uv's releases</a>.</em></p>
<blockquote>
<h2>v7.2.1 🌈 update known checksums up to 0.9.28</h2>
<h2>Changes</h2>
<h2>🧰 Maintenance</h2>
<ul>
<li>chore: update known checksums for 0.9.28 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#744</a>)</li>
<li>chore: update known checksums for 0.9.27 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#742</a>)</li>
<li>chore: update known checksums for 0.9.26 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#734</a>)</li>
<li>chore: update known checksums for 0.9.25 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#733</a>)</li>
<li>chore: update known checksums for 0.9.24 @<a href="https://github.com/apps/github-actions">github-actions[bot]</a> (<a href="">#730</a>)</li>
</ul>
<h2>📚 Documentation</h2>
<ul>
<li>Clarify impact of using actions/setup-python <a href="https://github.com/eifinger"><code>@​eifinger</code></a> (<a href="">#732</a>)</li>
</ul>
<h2>⬆️ Dependency updates</h2>
<ul>
<li>Bump zizmorcore/zizmor-action from 0.3.0 to 0.4.1 @<a href="https://github.com/apps/dependabot">dependabot[bot]</a> (<a href="">#741</a>)</li>
</ul>
<h2>v7.0.0 🌈 node24 and a lot of bugfixes</h2>
<h2>Changes</h2>
<p>This release comes with a load of bug fixes and a speed up. Because of switching from node20 to node24 it is also a breaking change. If you are running on GitHub hosted runners this will just work, if you are using self-hosted runners make sure, that your runners are up to date. If you followed the normal installation instructions your self-hosted runner will keep itself updated.</p>
<p>This release also removes the deprecated input <code>server-url</code> which was used to download uv releases from a different server.
The <a href="https://github.com/astral-sh/setup-uv?tab=readme-ov-file#manifest-file">manifest-file</a> input supersedes that functionality by adding a flexible way to define available versions and where they should be downloaded from.</p>
<h3>Fixes</h3>
<ul>
<li>The action now respects when the environment variable <code>UV_CACHE_DIR</code> is already set and does not overwrite it. It now also finds <a href="https://docs.astral.sh/uv/reference/settings/#cache-dir">cache-dir</a> settings in config files if you set them.</li>
<li>Some users encountered problems that <a href="https://github.com/astral-sh/setup-uv?tab=readme-ov-file#disable-cache-pruning">cache pruning</a> took forever because they had some <code>uv</code> processes running in the background. Starting with uv version <code>0.8.24</code> this action uses <code>uv cache prune --ci --force</code> to ignore the running processes</li>
<li>If you just want to install uv but not have it available in path, this action now respects <code>UV_NO_MODIFY_PATH</code></li>
<li>Some other actions also set the env var <code>UV_CACHE_DIR</code>. This action can now deal with that but as this could lead to unwanted behavior in some edgecases a warning is now displayed.</li>
</ul>
<h3>Improvements</h3>
<p>If you are using minimum version specifiers for the version of uv to install for example</p>
<pre lang="toml"><code>[tool.uv]
required-version = &quot;&gt;=0.8.17&quot;
</code></pre>
<p>This action now detects that and directly uses the latest version. Previously it would download all available releases from the uv repo
to determine the highest matching candidate for the version specifier, which took much more time.</p>
<p>If you are using other specifiers like <code>0.8.x</code> this action still needs to download all available releases because the specifier defines an upper bound (not 0.9.0 or later) and &quot;latest&quot; would possibly not satisfy that.</p>
<h2>🚨 Breaking changes</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>eac588a</code></a> Bump typesafegithub/github-actions-typing from 2.2.1 to 2.2.2 (<a href="">#753</a>)</li>
<li><a href=""><code>a97c6cb</code></a> Bump peter-evans/create-pull-request from 8.0.0 to 8.1.0 (<a href="">#751</a>)</li>
<li><a href=""><code>02182fa</code></a> fix: warn instead of error when no python to cache (<a href="">#762</a>)</li>
<li><a href=""><code>a3b3eae</code></a> chore: update known checksums for 0.10.0 (<a href="">#759</a>)</li>
<li><a href=""><code>78cebec</code></a> fix: use --clear to create venv (<a href="">#761</a>)</li>
<li><a href=""><code>b6b8e2c</code></a> refactor: tilde-expansion tests as unittests and no self-hosted tests (<a href="">#760</a>)</li>
<li><a href=""><code>e31bec8</code></a> chore: update known checksums for 0.9.30 (<a href="">#756</a>)</li>
<li><a href=""><code>db2b65e</code></a> Bump actions/checkout from 6.0.1 to 6.0.2 (<a href="">#740</a>)</li>
<li><a href=""><code>3511ff7</code></a> feat: add venv-path input for activate-environment (<a href="">#746</a>)</li>
<li><a href=""><code>99b0f04</code></a> Fix punctuation (<a href="">#747</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/astral-sh/setup-uv/compare/v6...v7">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=astral-sh/setup-uv&package-manager=github_actions&previous-version=6&new-version=7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6358c7435650`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.