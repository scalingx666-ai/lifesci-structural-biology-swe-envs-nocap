# Issue

**Title:** build(deps): bump CodSpeedHQ/action from 3 to 4

## Description

Bumps [CodSpeedHQ/action](https://github.com/codspeedhq/action) from 3 to 4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/codspeedhq/action/releases">CodSpeedHQ/action's releases</a>.</em></p>
<blockquote>
<h2>v4.0.0</h2>
<h2>💥 BREAKING</h2>
<p>It's now required to explicitly set the runner mode to <code>instrumentation</code> or <code>walltime</code> using either:</p>
<ul>
<li>the <code>mode</code> argument</li>
<li>or the <code>CODSPEED_RUNNER_MODE</code> environment variable</li>
</ul>
<blockquote>
<p>[!TIP]
Before, this variable was automatically set to <code>instrumentation</code> on every runner except for <a href="https://codspeed.io/docs/instruments/walltime">CodSpeed macro runners</a> where it was set to <code>walltime</code> by default.</p>
</blockquote>
<p>Find more details in <a href="https://codspeed.io/docs/instruments">the instruments documentation</a>.</p>
<h2>Details</h2>
<h3><!-- raw HTML omitted -->🚀 Features</h3>
<ul>
<li>Make perf profiling enabled by default by <a href="https://github.com/GuillaumeLagrange"><code>@​GuillaumeLagrange</code></a> in <a href="">#110</a></li>
<li>Make the runner mode argument required by <a href="https://github.com/GuillaumeLagrange"><code>@​GuillaumeLagrange</code></a></li>
<li>Use introspected node in walltime mode by <a href="https://github.com/GuillaumeLagrange"><code>@​GuillaumeLagrange</code></a> in <a href="">#108</a></li>
<li>Add instrumented go shell script by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a> in <a href="">#102</a></li>
</ul>
<h3><!-- raw HTML omitted -->🐛 Bug Fixes</h3>
<ul>
<li>Compute proper load bias by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a> in <a href="">#107</a></li>
<li>Increase timeout for first perf ping by <a href="https://github.com/GuillaumeLagrange"><code>@​GuillaumeLagrange</code></a></li>
<li>Prevent running with valgrind by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a> in <a href="">#106</a></li>
</ul>
<h3><!-- raw HTML omitted -->🏗️ Refactor</h3>
<ul>
<li>Change go-runner binary name by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a> in <a href="">#111</a></li>
</ul>
<p><strong>Full Runner Changelog</strong>: <a href="https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md">https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md</a></p>
<h2>v3.8.1</h2>
<h2>What's Changed</h2>
<h3><!-- raw HTML omitted -->🐛 Bug Fixes</h3>
<ul>
<li>Don't show error when libpython is not found by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a></li>
</ul>
<h3><!-- raw HTML omitted -->🏗️ Refactor</h3>
<ul>
<li>Improve conditional compilation in <code>get_pipe_open_options</code> by <a href="https://github.com/art049"><code>@​art049</code></a> in <a href="">#100</a></li>
</ul>
<h3><!-- raw HTML omitted -->⚙️ Internals</h3>
<ul>
<li>Change log level to warn for venv_compat error by <a href="https://github.com/not-matthias"><code>@​not-matthias</code></a> in <a href="">#104</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/CodSpeedHQ/action/compare/v3.8.0...v3.8.1">https://github.com/CodSpeedHQ/action/compare/v3.8.0...v3.8.1</a>
<strong>Full Runner Changelog</strong>: <a href="https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md">https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md</a></p>
<h2>v3.8.0</h2>
<h2>What's Changed</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6eeb021</code></a> Release v4.0.0 🚀</li>
<li><a href=""><code>74312da</code></a> chore: improve the release script</li>
<li><a href=""><code>8a17a35</code></a> ci: add modes to the matrix</li>
<li><a href=""><code>8e3f02a</code></a> feat: make the mode argument required</li>
<li><a href=""><code>97c7a6f</code></a> chore: bump runner version to 4.0.0</li>
<li><a href=""><code>8a4cadd</code></a> chore: point the changelog to the runner</li>
<li>See full diff in <a href="https://github.com/codspeedhq/action/compare/v3...v4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=CodSpeedHQ/action&package-manager=github_actions&previous-version=3&new-version=4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1ead4bb06b1a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.