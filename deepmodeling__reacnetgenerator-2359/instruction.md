# Issue

**Title:** build(deps): bump astral-sh/setup-uv from 5 to 6

## Description

Bumps [astral-sh/setup-uv](https://github.com/astral-sh/setup-uv) from 5 to 6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/setup-uv/releases">astral-sh/setup-uv's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0 🌈 activate-environment and working-directory</h2>
<h2>Changes</h2>
<p>This version contains some breaking changes which have been gathering up for a while. Lets dive into them:</p>
<ul>
<li><a href="https://github.com/astral-sh/setup-uv/blob/HEAD/#activate-environment">Activate environment</a></li>
<li><a href="https://github.com/astral-sh/setup-uv/blob/HEAD/#working-directory">Working Directory</a></li>
<li><a href="https://github.com/astral-sh/setup-uv/blob/HEAD/#default-cache-dependency-glob">Default <code>cache-dependency-glob</code></a></li>
<li><a href="https://github.com/astral-sh/setup-uv/blob/HEAD/#use-default-cache-dir-on-self-hosted-runners">Use default cache dir on self hosted runners</a></li>
</ul>
<h3>Activate environment</h3>
<p>In previous versions using the input <code>python-version</code> automatically activated a venv at the repository root.
This led to some unwanted side-effects, was sometimes unexpected and not flexible enough.</p>
<p>The venv activation is now explicitly controlled with the new input <code>activate-environment</code> (false by default):</p>
<pre lang="yaml"><code>- name: Install the latest version of uv and activate the environment
  uses: astral-sh/setup-uv@v6
  with:
    activate-environment: true
- run: uv pip install pip
</code></pre>
<p>The venv gets created by the <a href="https://docs.astral.sh/uv/pip/environments/"><code>uv venv</code></a> command so the python version is controlled by the <code>python-version</code> input or the files <code>pyproject.toml</code>, <code>uv.toml</code>, <code>.python-version</code> in the <code>working-directory</code>.</p>
<h3>Working Directory</h3>
<p>The new input <code>working-directory</code> controls where we look for <code>pyproject.toml</code>, <code>uv.toml</code> and <code>.python-version</code> files
which are used to determine the version of uv and python to install.</p>
<p>It can also be used to control where the venv gets created.</p>
<pre lang="yaml"><code>- name: Install uv based on the config files in the working-directory
  uses: astral-sh/setup-uv@v6
  with:
    working-directory: my/subproject/dir
</code></pre>
<blockquote>
<p>[!CAUTION]</p>
<p>The inputs <code>pyproject-file</code> and <code>uv-file</code> have been removed.</p>
</blockquote>
<h3>Default <code>cache-dependency-glob</code></h3>
<p><a href="https://github.com/ssbarnea"><code>@​ssbarnea</code></a> found out that the default <code>cache-dependency-glob</code> was not suitable for a lot of users.</p>
<p>The old default</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>c7f87aa</code></a> bump to v6 in README (<a href="">#382</a>)</li>
<li><a href=""><code>aadfaf0</code></a> Change default cache-dependency-glob (<a href="">#352</a>)</li>
<li><a href=""><code>a0f9da6</code></a> No default UV_CACHE_DIR on selfhosted runners (<a href="">#380</a>)</li>
<li><a href=""><code>ec4c691</code></a> new inputs activate-environment and working-directory (<a href="">#381</a>)</li>
<li><a href=""><code>aa12905</code></a> chore: update known checksums for 0.6.16 (<a href="">#378</a>)</li>
<li><a href=""><code>fcaddda</code></a> chore: update known checksums for 0.6.15 (<a href="">#377</a>)</li>
<li><a href=""><code>fb3a0a9</code></a> log info on venv activation (<a href="">#375</a>)</li>
<li>See full diff in <a href="https://github.com/astral-sh/setup-uv/compare/v5...v6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=astral-sh/setup-uv&package-manager=github_actions&previous-version=5&new-version=6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `34ba3d39f305`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.