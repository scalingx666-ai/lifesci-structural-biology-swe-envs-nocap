# Issue

**Title:** Bump pytest-mock from 3.15.1 to 3.16.0

## Description

Bumps [pytest-mock](https://github.com/pytest-dev/pytest-mock) from 3.15.1 to 3.16.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest-mock/releases">pytest-mock's releases</a>.</em></p>
<blockquote>
<h2>v3.16.0</h2>
<p><em>2026-09-27</em></p>
<ul>
<li><a href="">#604</a>: Fixed <code>duplicate_iterators=True</code> for async functions spied with <code>mocker.spy</code>.</li>
<li><a href="">#611</a>: Fixed async mock assertion introspection to use awaited arguments instead of the latest call's arguments.</li>
<li><a href="">#606</a>: <code>mocker.resetall(return_value=True, side_effect=True)</code> now also applies to non-callable mocks, such as those returned by <code>mocker.create_autospec(SomeClass, instance=True)</code>. Previously both arguments were silently ignored for them.</li>
<li><a href="">#547</a>: Added <code>SpyType</code> for annotating <code>mocker.spy</code> results.</li>
<li>Dropped support for EOL Python 3.9.</li>
<li><a href="">#147</a>: Removed handling of <code>RuntimeError: stop called on unstarted patcher</code>, which can no longer occur in the supported Python versions.</li>
<li>Added support for Python 3.15.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest-mock/blob/main/CHANGELOG.rst">pytest-mock's changelog</a>.</em></p>
<blockquote>
<h2>3.16.0</h2>
<p><em>2026-09-27</em></p>
<ul>
<li><code> &lt;</code>_: Fixed <code>duplicate_iterators=True</code> for async functions spied with <code>mocker.spy</code>.</li>
<li><code> &lt;</code>_: Fixed async mock assertion introspection to use awaited arguments instead of the latest call's arguments.</li>
<li><code> &lt;</code>_: <code>mocker.resetall(return_value=True, side_effect=True)</code> now also applies to non-callable mocks, such as those returned by <code>mocker.create_autospec(SomeClass, instance=True)</code>. Previously both arguments were silently ignored for them.</li>
<li><code> &lt;</code>_: Added <code>SpyType</code> for annotating <code>mocker.spy</code> results.</li>
<li>Dropped support for EOL Python 3.9.</li>
<li><code> &lt;</code>_: Removed handling of <code>RuntimeError: stop called on unstarted patcher</code>, which can no longer occur in the supported Python versions.</li>
<li>Added support for Python 3.15.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f3b531f</code></a> Release 3.16.0</li>
<li><a href=""><code>71ed673</code></a> Fix duplicate_iterators for async spies (<a href="">#604</a>)</li>
<li><a href=""><code>0797e3d</code></a> Fix async assertion argument introspection (<a href="">#611</a>)</li>
<li><a href=""><code>e24c334</code></a> docs: import os in the opening usage example (<a href="">#612</a>)</li>
<li><a href=""><code>9e7eb7b</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#613</a>)</li>
<li><a href=""><code>445fd4d</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#610</a>)</li>
<li><a href=""><code>a8bd0b1</code></a> Honour resetall() arguments for non-callable mocks (<a href="">#606</a>)</li>
<li><a href=""><code>6559fdf</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#608</a>)</li>
<li><a href=""><code>466d026</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#605</a>)</li>
<li><a href=""><code>164defe</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#603</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest-mock/compare/v3.15.1...v3.16.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pytest-mock&package-manager=pip&previous-version=3.15.1&new-version=3.16.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e7a72c5e5abb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.