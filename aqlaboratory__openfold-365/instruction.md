# Issue

**Title:** Bump actions/setup-python from 2 to 4

## Description

Bumps [actions/setup-python](https://github.com/actions/setup-python) from 2 to 4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/setup-python/releases">actions/setup-python's releases</a>.</em></p>
<blockquote>
<h2>v4.0.0</h2>
<h3>What's Changed</h3>
<ul>
<li>Support for <code>python-version-file</code> input: <a href="">#336</a></li>
</ul>
<p>Example of usage:</p>
<pre lang="yaml"><code>- uses: actions/setup-python@v4
  with:
    python-version-file: '.python-version' # Read python version from a file
- run: python my_script.py
</code></pre>
<p>There is no default python version for this <code>setup-python</code> major version, the action requires to specify either <code>python-version</code> input or <code>python-version-file</code> input. If the <code>python-version</code> input is not specified the action will try to read required version from file from <code>python-version-file</code> input.</p>
<ul>
<li>Use pypyX.Y for PyPy <code>python-version</code> input: <a href="">#349</a></li>
</ul>
<p>Example of usage:</p>
<pre lang="yaml"><code>- uses: actions/setup-python@v4
  with:
    python-version: 'pypy3.9' # pypy-X.Y kept for backward compatibility
- run: python my_script.py
</code></pre>
<ul>
<li>
<p><code>RUNNER_TOOL_CACHE</code> environment variable is equal <code>AGENT_TOOLSDIRECTORY</code>: <a href="">#338</a></p>
</li>
<li>
<p>Bugfix: create missing <code>pypyX.Y</code> symlinks: <a href="">#347</a></p>
</li>
<li>
<p><code>PKG_CONFIG_PATH</code> environment variable: <a href="">#400</a></p>
</li>
<li>
<p>Added <code>python-path</code> output: <a href="">#405</a>
<code>python-path</code> output contains Python executable path.</p>
</li>
<li>
<p>Updated <code>zeit/ncc</code> to <code>vercel/ncc</code> package: <a href="">#393</a></p>
</li>
<li>
<p>Bugfix: fixed output for prerelease version of poetry: <a href="">#409</a></p>
</li>
<li>
<p>Made <code>pythonLocation</code> environment variable consistent for Python and PyPy: <a href="">#418</a></p>
</li>
<li>
<p>Bugfix for <code>3.x-dev</code> syntax: <a href="">#417</a></p>
</li>
<li>
<p>Other improvements: <a href="">#318</a> <a href="">#396</a> <a href="">#384</a> <a href="">#387</a> <a href="">#388</a></p>
</li>
</ul>
<h2>v3.1.4</h2>
<h2>What's Changed</h2>
<p>In the scope of this patch release, the warning for deprecating Python 2.x was added in <a href="">actions/setup-python#674</a> by <a href="https://github.com/dmitry-shibanov"><code>@​dmitry-shibanov</code></a></p>
<p>For more information, check out <a href="">actions/setup-python#672</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>65d7f2d</code></a> Add range validation for toml files (<a href="">#726</a>)</li>
<li><a href=""><code>f97b831</code></a> Bump word-wrap from 1.2.3 to 1.2.4 (<a href="">#702</a>)</li>
<li><a href=""><code>61a6322</code></a> Fix typos found by codespell (<a href="">#650</a>)</li>
<li><a href=""><code>ea5b57f</code></a> Bump semver from 7.3.8 to 7.5.2 (<a href="">#692</a>)</li>
<li><a href=""><code>014d32a</code></a> Bump tough-cookie and <code>@​azure/ms-rest-js</code> (<a href="">#697</a>)</li>
<li><a href=""><code>c16c4b8</code></a> Fix pipenv jobs (<a href="">#699</a>)</li>
<li><a href=""><code>0d5da6a</code></a> Read python version from pyproject.toml (fix <a href="">#542</a>) (<a href="">#669</a>)</li>
<li><a href=""><code>3f824b7</code></a> remove python 2.7 from the tests (<a href="">#687</a>)</li>
<li><a href=""><code>bd6b4b6</code></a> Add warning for python 2.7 (<a href="">#673</a>)</li>
<li><a href=""><code>0cbcb9a</code></a> Merge pull request <a href="">#668</a> from akv-platform/disallow-implicit-dependencies</li>
<li>Additional commits viewable in <a href="https://github.com/actions/setup-python/compare/v2...v4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/setup-python&package-manager=github_actions&previous-version=2&new-version=4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `51472e756a1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.