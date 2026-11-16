# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 4.1 to 4.2

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 4.1 to 4.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>v4.2.0</h2>
<ul>
<li>🌟 CPython 3.15 wheels are now built by default - without the <code>&quot;cpython-prerelease&quot;</code> <a href="https://cibuildwheel.pypa.io/en/stable/options/#enable"><code>enable</code></a> set. It's time to build and upload these wheels to PyPI! This release includes CPython 3.15.0rc1, which is guaranteed to be ABI compatible with the final release. (<a href="">#2944</a>)</li>
<li>✨ Adds Pyodide 3.15 support with the <code>cp315-pyodide_wasm32</code> build identifier, using Pyodide 315.0.0a2. These are also stable wrt. the final release. (<a href="">#2958</a>)</li>
<li>🐛 Retries a failed download six times with exponential backoff, so short network outages no longer stop a build. A <code>4xx</code> response is still reported at once. (<a href="">#2953</a>)</li>
<li>🐛 Accepts <code>default</code> as a <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a> value on Pyodide, and accepts <code>pyodide-build</code> in the top-level table and in overrides (<a href="">#2951</a>)</li>
<li>🛠 Holds pip back on GraalPy, where newer pip breaks the build (<a href="">#2955</a>)</li>
<li>🛠 Updates Pyodide to 314.0.4 (<a href="">#2949</a>, <a href="">#2952</a>)</li>
<li>🛠 Updates dependencies and container pins (<a href="">#2952</a>, <a href="">#2960</a>)</li>
<li>💼 Updates CI action pins (<a href="">#2948</a>, <a href="">#2954</a>)</li>
<li>🧪 Uses pp311 for the abi3 test, and deletes <code>test_overridden_pip_constraint</code>, which is not necessary since <a href="">#2583</a> (<a href="">#2956</a>, <a href="">#2957</a>)</li>
</ul>
<h2>v4.1.1</h2>
<ul>
<li>✨ Adds <code>pyodide-build</code> as a separate <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a>, now the default frontend for Pyodide, with verbosity flags handling. Any other frontend is ignored with a warning on Pyodide. (<a href="">#2609</a>, <a href="">#2945</a>)</li>
<li>🔐 Uses digests instead of tags for pinned container images, strengthening supply-chain security. The human-readable tags remain as comments in <code>pinned_docker_images.cfg</code>. (<a href="">#2915</a>)</li>
<li>🐛 Fixes platform-specific <a href="https://cibuildwheel.pypa.io/en/stable/options/#test-runtime"><code>test-runtime</code></a> environment variables (e.g. <code>CIBW_TEST_RUNTIME_ANDROID</code>) not being honored (<a href="">#2941</a>)</li>
<li>🐛 Fixes quoting of <a href="https://cibuildwheel.pypa.io/en/stable/options/#test-requires"><code>test-requires</code></a> and <a href="https://cibuildwheel.pypa.io/en/stable/options/#audit-requires"><code>audit-requires</code></a> so PEP 508 specifiers containing spaces work (<a href="">#2913</a>)</li>
<li>🐛 Makes <a href="https://cibuildwheel.pypa.io/en/stable/options/#archs"><code>archs</code></a> parsing case-insensitive and platform-aware, so e.g. <code>arm64</code> works on Windows (<a href="">#2920</a>)</li>
<li>🐛 Uses an absolute path for the <code>{project}</code> placeholder in <a href="https://cibuildwheel.pypa.io/en/stable/options/#config-settings"><code>config-settings</code></a> (<a href="">#2934</a>)</li>
<li>🐛 Validates the <a href="https://cibuildwheel.pypa.io/en/stable/options/#pyodide-version"><code>pyodide-version</code></a> option against the build identifier with a clear error (<a href="">#2925</a>)</li>
<li>🐛 Fixes PyPy installs on macOS after PyPy switched its downloads from <code>.tar.bz2</code> to <code>.tar.gz</code> (<a href="">#2939</a>)</li>
<li>🐛 Makes a matching <code>python3-config</code> available in the build and test venvs on macOS (<a href="">#2922</a>)</li>
<li>🛠 Updates dependencies and container pins (<a href="">#2917</a>, <a href="">#2935</a>, <a href="">#2939</a>)</li>
<li>🛠 Updates Android tests to current Python versions and the new test repository URL (<a href="">#2933</a>)</li>
<li>🛠 Drops the <code>orjson</code> dependency, no longer used by mypy 2+ (<a href="">#2923</a>)</li>
<li>📚 Builds the docs with properdocs, a MkDocs fork (<a href="">#2946</a>)</li>
<li>📚 Adds the missing <code>cp314-pyodide_wasm32</code> entry to the build identifier table (<a href="">#2947</a>)</li>
<li>📚 Removes outdated notes about the <code>pip wheel</code> build frontend and ClearLinux (<a href="">#2926</a>)</li>
<li>💼 Adds a &quot;CI: PyPy EoL&quot; PR label to run PyPy EoL tests on PRs (<a href="">#2930</a>)</li>
<li>💼 Updates CI action pins and pre-commit hooks (<a href="">#2914</a>, <a href="">#2932</a>, <a href="">#2938</a>, <a href="">#2940</a>, <a href="">#2942</a>, <a href="">#2943</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/blob/main/docs/changelog.md">pypa/cibuildwheel's changelog</a>.</em></p>
<blockquote>
<hr />
<h2>title: Changelog
ref: changelog</h2>
<h1>Changelog</h1>
<h3>v4.2.0</h3>
<p><em>4 August 2026</em></p>
<ul>
<li>🌟 CPython 3.15 wheels are now built by default - without the <code>&quot;cpython-prerelease&quot;</code> <a href="https://cibuildwheel.pypa.io/en/stable/options/#enable"><code>enable</code></a> set. It's time to build and upload these wheels to PyPI! This release includes CPython 3.15.0rc1, which is guaranteed to be ABI compatible with the final release. (<a href="">#2944</a>)</li>
<li>✨ Adds Pyodide 3.15 support with the <code>cp315-pyodide_wasm32</code> build identifier, using Pyodide 315.0.0a2. These are also stable wrt. the final release. (<a href="">#2958</a>)</li>
<li>🐛 Retries a failed download six times with exponential backoff, so short network outages no longer stop a build. A <code>4xx</code> response is still reported at once. (<a href="">#2953</a>)</li>
<li>🐛 Accepts <code>default</code> as a <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a> value on Pyodide, and accepts <code>pyodide-build</code> in the top-level table and in overrides (<a href="">#2951</a>)</li>
<li>🛠 Holds pip back on GraalPy, where newer pip breaks the build (<a href="">#2955</a>)</li>
<li>🛠 Updates Pyodide to 314.0.4 (<a href="">#2949</a>, <a href="">#2952</a>)</li>
<li>🛠 Updates dependencies and container pins (<a href="">#2952</a>, <a href="">#2960</a>)</li>
<li>💼 Updates CI action pins (<a href="">#2948</a>, <a href="">#2954</a>)</li>
<li>🧪 Uses pp311 for the abi3 test, and deletes <code>test_overridden_pip_constraint</code>, which is not necessary since <a href="">#2583</a> (<a href="">#2956</a>, <a href="">#2957</a>)</li>
</ul>
<h3>v4.1.1</h3>
<p><em>24 July 2026</em></p>
<ul>
<li>✨ Adds <code>pyodide-build</code> as a separate <a href="https://cibuildwheel.pypa.io/en/stable/options/#build-frontend"><code>build-frontend</code></a>, now the default frontend for Pyodide, with verbosity flags handling. Any other frontend is ignored with a warning on Pyodide. (<a href="">#2609</a>, <a href="">#2945</a>)</li>
<li>🔐 Uses digests instead of tags for pinned container images, strengthening supply-chain security. The human-readable tags remain as comments in <code>pinned_docker_images.cfg</code>. (<a href="">#2915</a>)</li>
<li>🐛 Fixes platform-specific <a href="https://cibuildwheel.pypa.io/en/stable/options/#test-runtime"><code>test-runtime</code></a> environment variables (e.g. <code>CIBW_TEST_RUNTIME_ANDROID</code>) not being honored (<a href="">#2941</a>)</li>
<li>🐛 Fixes quoting of <a href="https://cibuildwheel.pypa.io/en/stable/options/#test-requires"><code>test-requires</code></a> and <a href="https://cibuildwheel.pypa.io/en/stable/options/#audit-requires"><code>audit-requires</code></a> so PEP 508 specifiers containing spaces work (<a href="">#2913</a>)</li>
<li>🐛 Makes <a href="https://cibuildwheel.pypa.io/en/stable/options/#archs"><code>archs</code></a> parsing case-insensitive and platform-aware, so e.g. <code>arm64</code> works on Windows (<a href="">#2920</a>)</li>
<li>🐛 Uses an absolute path for the <code>{project}</code> placeholder in <a href="https://cibuildwheel.pypa.io/en/stable/options/#config-settings"><code>config-settings</code></a> (<a href="">#2934</a>)</li>
<li>🐛 Validates the <a href="https://cibuildwheel.pypa.io/en/stable/options/#pyodide-version"><code>pyodide-version</code></a> option against the build identifier with a clear error (<a href="">#2925</a>)</li>
<li>🐛 Fixes PyPy installs on macOS after PyPy switched its downloads from <code>.tar.bz2</code> to <code>.tar.gz</code> (<a href="">#2939</a>)</li>
<li>🐛 Makes a matching <code>python3-config</code> available in the build and test venvs on macOS (<a href="">#2922</a>)</li>
<li>🛠 Updates dependencies and container pins (<a href="">#2917</a>, <a href="">#2935</a>, <a href="">#2939</a>)</li>
<li>🛠 Updates Android tests to current Python versions and the new test repository URL (<a href="">#2933</a>)</li>
<li>🛠 Drops the <code>orjson</code> dependency, no longer used by mypy 2+ (<a href="">#2923</a>)</li>
<li>📚 Builds the docs with properdocs, a MkDocs fork (<a href="">#2946</a>)</li>
<li>📚 Adds the missing <code>cp314-pyodide_wasm32</code> entry to the build identifier table (<a href="">#2947</a>)</li>
<li>📚 Removes outdated notes about the <code>pip wheel</code> build frontend and ClearLinux (<a href="">#2926</a>)</li>
<li>💼 Adds a &quot;CI: PyPy EoL&quot; PR label to run PyPy EoL tests on PRs (<a href="">#2930</a>)</li>
<li>💼 Updates CI action pins and pre-commit hooks (<a href="">#2914</a>, <a href="">#2932</a>, <a href="">#2938</a>, <a href="">#2940</a>, <a href="">#2942</a>, <a href="">#2943</a>)</li>
</ul>
<h3>v4.1.0</h3>
<p><em>12 June 2026</em></p>
<ul>
<li>✨ Updates Pyodide to the final 314.0.0 release, so Pyodide 3.14 wheels now build by default without the <code>pyodide-prerelease</code> <a href="https://cibuildwheel.pypa.io/en/stable/options/#enable"><code>enable</code></a> flag. (<a href="">#2906</a>)</li>
<li>🐛 Raises clear errors when a build produces no wheel, instead of failing later with a confusing message (<a href="">#2909</a>)</li>
<li>🛠 Speeds up CLI startup through lazy imports on Python 3.15 (<a href="">#2797</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>1828c10</code></a> Bump version: v4.2.0</li>
<li><a href=""><code>1ed6c22</code></a> [Bot] Update dependencies (<a href="">#2960</a>)</li>
<li><a href=""><code>92e2145</code></a> feat: Python 3.15 build by default (<a href="">#2944</a>)</li>
<li><a href=""><code>3568a1c</code></a> [Bot] Update dependencies (<a href="">#2952</a>)</li>
<li><a href=""><code>03cefa3</code></a> feat: add pyodide_315 support (<a href="">#2958</a>)</li>
<li><a href=""><code>73417ae</code></a> fix(tests): delete test_overridden_pip_constraint (<a href="">#2957</a>)</li>
<li><a href=""><code>3c603e4</code></a> fix: pin pip on GraalPy (<a href="">#2955</a>)</li>
<li><a href=""><code>f0b2156</code></a> chore: use pp311 for test_abi3 (<a href="">#2956</a>)</li>
<li><a href=""><code>ffd2e18</code></a> fix(schema): default is fine for pyodide too (<a href="">#2951</a>)</li>
<li><a href=""><code>dca67ee</code></a> chore(deps): bump the actions group with 5 updates (<a href="">#2954</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/cibuildwheel/compare/v4.1...v4.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=4.1&new-version=4.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `290376957207`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.