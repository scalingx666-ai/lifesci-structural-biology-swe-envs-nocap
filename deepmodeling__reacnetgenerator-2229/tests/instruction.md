# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 2.17 to 2.18

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 2.17 to 2.18.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>v2.18.0</h2>
<ul>
<li>✨ Adds CPython 3.13 support, under the prerelease flag <a href="https://cibuildwheel.pypa.io/en/stable/options/#prerelease-pythons">CIBW_PRERELEASE_PYTHONS</a>. This version of cibuildwheel uses 3.13.0b1. Free-threading mode is not available yet, waiting on official binaries (planned for beta 2) and pip support.
<em>While CPython is in beta, the ABI can change, so your wheels might not be compatible with the final release. For this reason, we don't recommend distributing wheels until RC1, at which point 3.13 will be available in cibuildwheel without the flag.</em> (<a href="">#1816</a>)</li>
<li>✨ Musllinux now defaults to <code>musllinux_1_2</code>. You can set the older <code>musllinux_1_1</code> via config if needed. (<a href="">#1817</a>)</li>
<li>🛠 No longer pre-seed setuptools/wheel in virtual environments (<a href="">#1819</a>)</li>
<li>🛠 Respect the constraints file when building with pip, matching build (<a href="">#1818</a>)</li>
<li>🛠 Use uv to compile our pinned dependencies, 10x faster and doesn't require special setup (<a href="">#1778</a>)</li>
<li>🐛 Fix an issue with the schema (<a href="">#1788</a>)</li>
<li>📚 Document the new delocate error checking macOS versions (<a href="">#1766</a>)</li>
<li>📚 Document Rust builds (<a href="">#1816</a>)</li>
<li>📚 Speed up our readthedocs builds with uv, 26 seconds -&gt; 6 seconds to install dependencies (<a href="">#1816</a>)</li>
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
<h3>v2.18.0</h3>
<p><em>12 May 2024</em></p>
<ul>
<li>
<p>✨ Adds CPython 3.13 support, under the prerelease flag <a href="https://cibuildwheel.pypa.io/en/stable/options/#prerelease-pythons">CIBW_PRERELEASE_PYTHONS</a>. This version of cibuildwheel uses 3.13.0b1. Free-threading mode is not available yet, waiting on official binaries (planned for beta 2) and pip support.</p>
<p><em>While CPython is in beta, the ABI can change, so your wheels might not be compatible with the final release. For this reason, we don't recommend distributing wheels until RC1, at which point 3.13 will be available in cibuildwheel without the flag.</em> (<a href="">#1816</a>)</p>
</li>
<li>
<p>✨ Musllinux now defaults to <code>musllinux_1_2</code>. You can set the older <code>manylinux_1_1</code> via config if needed. (<a href="">#1817</a>)</p>
</li>
<li>
<p>🛠 No longer pre-seed setuptools/wheel in virtual environments (<a href="">#1819</a>)</p>
</li>
<li>
<p>🛠 Respect the constraints file when building with pip, matching build (<a href="">#1818</a>)</p>
</li>
<li>
<p>🛠 Use uv to compile our pinned dependencies, 10x faster and doesn't require special setup (<a href="">#1778</a>)</p>
</li>
<li>
<p>🐛 Fix an issue with the schema (<a href="">#1788</a>)</p>
</li>
<li>
<p>📚 Document the new delocate error checking macOS versions (<a href="">#1766</a>)</p>
</li>
<li>
<p>📚 Document Rust builds (<a href="">#1816</a>)</p>
</li>
<li>
<p>📚 Speed up our readthedocs builds with uv, 26 seconds -&gt; 6 seconds to install dependencies (<a href="">#1816</a>)</p>
</li>
</ul>
<h3>v2.17.0</h3>
<p><em>11 March 2024</em></p>
<ul>
<li>🌟 Adds the ability to inherit configuration in TOML overrides. This makes certain configurations much simpler. If you're overriding an option like <code>before-build</code> or <code>environment</code>, and you just want to add an  extra command or environment variable, you can just append (or prepend) to the previous config. See <a href="https://cibuildwheel.pypa.io/en/stable/options/#inherit">the docs</a> for more information. (<a href="">#1730</a>)</li>
<li>🌟 Adds official support for native <code>arm64</code> macOS GitHub runners. To use them, just specify <code>macos-14</code> as an <code>os</code> of your job in your workflow file. You can also keep <code>macos-13</code> in your build matrix to build <code>x86_64</code>. Check out the new <a href="https://cibuildwheel.pypa.io/en/stable/setup/#github-actions">GitHub Actions example config</a>.</li>
<li>✨ You no longer need to specify <code>--platform</code> to run cibuildwheel locally! Instead it will detect your platform automatically. This was a safety feature, no longer necessary. (<a href="">#1727</a>)</li>
<li>🛠 Removed setuptools and wheel pinned versions. This only affects old-style projects without a <code>pyproject.toml</code>, projects with <code>pyproject.toml</code> are already getting fresh versions of their <code>build-system.requires</code> installed into an isolated environment. (<a href="">#1725</a>)</li>
<li>🛠 Improve how the GitHub Action passes arguments (<a href="">#1757</a>)</li>
<li>🛠 Remove a system-wide install of pipx in the GitHub Action (<a href="">#1745</a>)</li>
<li>🐛 No longer will cibuildwheel override the <code>PIP_CONSTRAINT</code> environment variable when using the <code>build</code> frontend. Instead it will be extended. (<a href="">#1675</a>)</li>
<li>🐛 Fix a bug where building and testing both <code>x86_86</code> and <code>arm64</code> wheels on the same runner caused the wrong architectures in the test environment (<a href="">#1750</a>)</li>
<li>🐛 Fix a bug that prevented testing a CPython 3.8 wheel targeting macOS 11+ on <code>x86_64</code> (<a href="">#1768</a>)</li>
<li>📚 Moved the docs onto the official PyPA domain - they're now available at <a href="https://cibuildwheel.pypa.io">https://cibuildwheel.pypa.io</a> . (<a href="">#1775</a>)</li>
<li>📚 Docs and examples improvements (<a href="">#1762</a>, <a href="">#1734</a>)</li>
</ul>
<h3>v2.16.5</h3>
<p><em>30 January 2024</em></p>
<ul>
<li>🐛 Fix an incompatibility with the GitHub Action and new GitHub Runner images for Windows that bundle Powershell 7.3+ (<a href="">#1741</a>)</li>
<li>🛠 Preliminary support for new <code>macos-14</code> arm64 runners (<a href="">#1743</a>)</li>
</ul>
<h3>v2.16.4</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>711a3d0</code></a> Bump version: v2.18.0</li>
<li><a href=""><code>3873a1e</code></a> chore: update bump_version script</li>
<li><a href=""><code>6dd4f15</code></a> docs: rust (<a href="">#1816</a>)</li>
<li><a href=""><code>44c4742</code></a> feat: add Python 3.13 beta 1 (<a href="">#1815</a>)</li>
<li><a href=""><code>c021744</code></a> feat: move default <code>musllinux</code> build to <code>musllinux_1_2</code> (<a href="">#1817</a>)</li>
<li><a href=""><code>cf18014</code></a> fix: do not pre-seed setuptools / wheel in virtual environment (<a href="">#1819</a>)</li>
<li><a href=""><code>3ea0a6c</code></a> fix: respect constraints when building with pip (<a href="">#1818</a>)</li>
<li><a href=""><code>30a0dec</code></a> [Bot] Update dependencies (<a href="">#1812</a>)</li>
<li><a href=""><code>988d512</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1813</a>)</li>
<li><a href=""><code>98d57d9</code></a> Merge pull request <a href="">#1766</a> from Czaki/delocate_info</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/cibuildwheel/compare/v2.17...v2.18">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=2.17&new-version=2.18)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5e98e168869`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.