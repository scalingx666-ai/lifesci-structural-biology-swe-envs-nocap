# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 2.22 to 2.23

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 2.22 to 2.23.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>v2.23.0</h2>
<ul>
<li>✨ Adds official support for the new GitHub Actions Arm runners. In fact these worked out-of-the-box, now we include them in our tests and example configs. (<a href="">#2135</a> via <a href="">#2281</a>)</li>
<li>✨ Adds support for building PyPy 3.11 wheels (<a href="">#2268</a> via <a href="">#2281</a>)</li>
<li>🛠 Adopts the beta pypa/manylinux image for armv7l builds (<a href="">#2269</a> via <a href="">#2281</a>)</li>
<li>🛠 Dependency updates, including Pyodide 0.27 (<a href="">#2117</a> and <a href="">#2281</a>)</li>
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
<h3>v2.23.0</h3>
<p><em>1 March 2025</em></p>
<ul>
<li>✨ Adds official support for the new GitHub Actions Arm runners. In fact these worked out-of-the-box, now we include them in our tests and example configs. (<a href="">#2135</a> via <a href="">#2281</a>)</li>
<li>✨ Adds support for building PyPy 3.11 wheels (<a href="">#2268</a> via <a href="">#2281</a>)</li>
<li>🛠 Adopts the beta pypa/manylinux image for armv7l builds (<a href="">#2269</a> via <a href="">#2281</a>)</li>
<li>🛠 Dependency updates, including Pyodide 0.27 (<a href="">#2117</a> and <a href="">#2281</a>)</li>
</ul>
<h3>v2.22.0</h3>
<p><em>23 November 2024</em></p>
<ul>
<li>🌟 Added a new <code>CIBW_ENABLE</code>/<code>enable</code> feature that replaces <code>CIBW_FREETHREADED_SUPPORT</code>/<code>free-threaded-support</code> and <code>CIBW_PRERELEASE_PYTHONS</code> with a system that supports both. In cibuildwheel 3, this will also include a PyPy setting and the deprecated options will be removed. (<a href="">#2048</a>)</li>
<li>🌟 <a href="https://peps.python.org/pep-0735/">Dependency groups</a> are now supported for tests. Use <code>CIBW_TEST_GROUPS</code>/<code>test-groups</code> to specify groups in <code>[dependency-groups]</code> for testing. (<a href="">#2063</a>)</li>
<li>🌟 Support for the experimental Ubuntu-based ARMv7l manylinux image (<a href="">#2052</a>)</li>
<li>✨ Show a warning when cibuildwheel is run from Python 3.10 or older; cibuildwheel 3.0 will require Python 3.11 or newer as host (<a href="">#2050</a>)</li>
<li>🐛 Fix issue with stderr interfering with checking the docker version (<a href="">#2074</a>)</li>
<li>🛠 Python 3.9 is now used in <code>CIBW_BEFORE_ALL</code>/<code>before-all</code> on linux, replacing 3.8, which is now EoL (<a href="">#2043</a>)</li>
<li>🛠 Error messages for producing a pure-Python wheel are slightly more informative (<a href="">#2044</a>)</li>
<li>🛠 Better error when <code>uname -m</code> fails on ARM (<a href="">#2049</a>)</li>
<li>🛠 Better error when repair fails and docs for abi3audit on Windows (<a href="">#2058</a>)</li>
<li>🛠 Better error when <code>manylinux-interpreters ensure</code> fails (<a href="">#2066</a>)</li>
<li>🛠 Update Pyodide to 0.26.4, and adapt to the unbundled pyodide-build (now 0.29) (<a href="">#2090</a>)</li>
<li>🛠 Now cibuildwheel uses dependency-groups for development dependencies (<a href="">#2064</a>, <a href="">#2085</a>)</li>
<li>📚 Docs updates and tidy ups (<a href="">#2061</a>, <a href="">#2067</a>, <a href="">#2072</a>)</li>
</ul>
<h3>v2.21.3</h3>
<p><em>9 October 2024</em></p>
<ul>
<li>🛠 Update CPython 3.13 to 3.13.0 final release (<a href="">#2032</a>)</li>
<li>📚 Docs updates and tidy ups (<a href="">#2035</a>)</li>
</ul>
<h3>v2.21.2</h3>
<p><em>2 October 2024</em></p>
<ul>
<li>✨ Adds support for building 32-bit armv7l wheels on musllinux. On a Linux system with emulation set up, set <a href="https://cibuildwheel.pypa.io/en/stable/options/#archs">CIBW_ARCHS</a> to <code>armv7l</code> on Linux to try it out if you're interested! (<a href="">#2017</a>)</li>
<li>🐛 Fix Linux Podman builds on some systems (<a href="">#2016</a>)</li>
<li>✨ Adds official support for running on Python 3.13 (<a href="">#2026</a>)</li>
<li>🛠 Update CPython 3.13 to 3.13.0rc3 (<a href="">#2029</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6cccd09</code></a> Bump version: v2.23.0</li>
<li><a href=""><code>aa1534d</code></a> chore(2.x): update dependencies (<a href="">#2294</a>)</li>
<li><a href=""><code>ee23dd1</code></a> fix(test): implement retry for test_container_removed</li>
<li><a href=""><code>55037e9</code></a> ci/doc: move azure macOS build to <code>macOS-13</code> (<a href="">#2101</a>)</li>
<li><a href=""><code>8874ee2</code></a> Remove specific Python versions from the update-dependencies job</li>
<li><a href=""><code>f76d345</code></a> chore: bump dependencies</li>
<li><a href=""><code>5a5e514</code></a> Bump to Pyodide 0.27 (<a href="">#2117</a>)</li>
<li><a href=""><code>017abbb</code></a> feature: add PyPy 3.11 (<a href="">#2268</a>)</li>
<li><a href=""><code>bb1fd33</code></a> feat: Add support for ubuntu-24.04-arm GHA runner (<a href="">#2135</a>)</li>
<li><a href=""><code>98a6f3b</code></a> chore: use pypa/manylinux for manylinux_2_31_armv7l (<a href="">#2269</a>)</li>
<li>See full diff in <a href="https://github.com/pypa/cibuildwheel/compare/v2.22...v2.23">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=2.22&new-version=2.23)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `170459ca328c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.