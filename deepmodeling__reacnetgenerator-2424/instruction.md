# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 3.3 to 3.4

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 3.3 to 3.4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>v3.4.0</h2>
<ul>
<li>🌟 You can now build wheels using <code>uv</code> as a build frontend. This should improve performance, especially if your project has lots of build dependencies. To use, set <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a> to <code>uv</code>. (<a href="">#2322</a>)</li>
<li>⚠️ We no longer support running on Travis CI. It may continue working but we don't run tests there anymore so we can't be sure. (<a href="">#2682</a>)</li>
<li>✨ Improvements to building Rust wheels on Android (<a href="">#2650</a>)</li>
<li>🐛 Fix bug with the GitHub Action on Windows, where PATH was getting unnecessarily changed, causing issues with meson builds. (<a href="">#2723</a>)</li>
<li>✨ Add support for quiet setting on <code>build</code> and <code>uv</code> from the cibuildwheel <code>build-verbosity</code> setting. (<a href="">#2737</a>)</li>
<li>📚 Docs updates, including guidance on using Meson on Windows (<a href="">#2718</a>)</li>
</ul>
<h2>v3.3.1</h2>
<ul>
<li>🛠 Update dependencies and container pins, including updating to CPython 3.14.2. (<a href="">#2708</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/blob/main/docs/changelog.md">pypa/cibuildwheel's changelog</a>.</em></p>
<blockquote>
<hr />
<h2>title: Changelog</h2>
<h1>Changelog</h1>
<h3>v3.4.0</h3>
<p><em>5 March 2026</em></p>
<ul>
<li>🌟 You can now build wheels using <code>uv</code> as a build frontend. This should improve performance, especially if your project has lots of build dependencies. To use, set <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a> to <code>uv</code>. (<a href="">#2322</a>)</li>
<li>⚠️ We no longer support running on Travis CI. It may continue working but we don't run tests there anymore so we can't be sure. (<a href="">#2682</a>)</li>
<li>✨ Improvements to building rust wheels on Android (<a href="">#2650</a>)</li>
<li>🐛 Fix bug with the GitHub Action on Windows, where PATH was getting unnecessarily changed, causing issues with meson builds. (<a href="">#2723</a>)</li>
<li>✨ Add support for quiet setting on <code>build</code> and <code>uv</code> from the cibuildwheel <code>build-verbosity</code> setting. (<a href="">#2737</a>)</li>
<li>📚 Docs updates, including guidance on using Meson on Windows (<a href="">#2718</a>)</li>
</ul>
<h3>v3.3.1</h3>
<p><em>5 January 2026</em></p>
<ul>
<li>🛠 Update dependencies and container pins, including updating to CPython 3.14.2. (<a href="">#2708</a>)</li>
</ul>
<h3>v3.3.0</h3>
<p><em>12 November 2025</em></p>
<ul>
<li>🐛 Fix an incompatibility with Docker v29 (<a href="">#2660</a>)</li>
<li>✨ Adds <code>test-runtime</code> option, to customise how tests on simulated/emulated environments are run (<a href="">#2636</a>)</li>
<li>✨ Adds support for new <code>manylinux_2_35</code> images on 32-bit ARM <code>armv7l</code>, offering better C++20 compatibility (<a href="">#2656</a>)</li>
<li>✨ <code>build[uv]</code> is now supported on Android (<a href="">#2587</a>)</li>
<li>✨ You can now install extras (such as <code>uv</code>) with a simple option on the GitHub Action (<a href="">#2630</a>)</li>
<li>✨ <code>{project}</code> and <code>{package}</code> placeholders are now supported in <code>repair-wheel-command</code> (<a href="">#2589</a>)</li>
<li>🛠 The versions set with <code>dependency-versions</code> no longer constrain packages specified by your <code>build-system.requires</code>. Previously, on platforms other than Linux, the constraints in this option would remain in the environment during the build. This has been tidied up make behaviour more consistent between platforms, and to prevent version conflicts. (<a href="">#2583</a>)</li>
<li>🛠 Improve the handling of <code>test-command</code> on Android, enabling more options to be passed (<a href="">#2590</a>)</li>
<li>📚 Docs improvements (<a href="">#2618</a>)</li>
</ul>
<h3>v3.2.1</h3>
<p><em>12 October 2025</em></p>
<ul>
<li>🛠 Update to CPython 3.14.0 final (<a href="">#2614</a>)</li>
<li>🐛 Fix the default MACOSX_DEPLOYMENT_TARGET on Python 3.14 (<a href="">#2613</a>)</li>
<li>📚 Docs improvements (<a href="">#2617</a>)</li>
</ul>
<h3>v3.2.0</h3>
<p><em>22 September 2025</em></p>
<ul>
<li>✨ Adds GraalPy v25 (Python 3.12) support (<a href="">#2597</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ee02a15</code></a> Bump version: v3.4.0</li>
<li><a href=""><code>f08ce70</code></a> chore: match copyright to BSD-2-clause template (<a href="">#2758</a>)</li>
<li><a href=""><code>95b4b79</code></a> Fix incorrect document regarding pyodide auditwheel (<a href="">#2752</a>)</li>
<li><a href=""><code>f046d0a</code></a> Bump to Pyodide v0.29.3 (<a href="">#2743</a>)</li>
<li><a href=""><code>f5a31ee</code></a> chore(deps): bump the actions group across 1 directory with 4 updates (<a href="">#2755</a>)</li>
<li><a href=""><code>35ec456</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#2756</a>)</li>
<li><a href=""><code>51fed90</code></a> [Bot] Update dependencies (<a href="">#2734</a>)</li>
<li><a href=""><code>b70562f</code></a> Debug GraalPy/uv test failures on Windows (<a href="">#2741</a>)</li>
<li><a href=""><code>0a85e29</code></a> Work around CDN rate limiting on Python.org in bin/update_pythons.py (<a href="">#2753</a>)</li>
<li><a href=""><code>2d33864</code></a> Pin the actions/setup-python for the externally used action.yml (<a href="">#2749</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/cibuildwheel/compare/v3.3...v3.4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=3.3&new-version=3.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7c28d9c89ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.