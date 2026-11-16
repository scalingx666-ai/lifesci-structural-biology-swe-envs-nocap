# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 2.19 to 2.20

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 2.19 to 2.20.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>Version 2.20.0</h2>
<ul>
<li>🌟 CPython 3.13 wheels are now built by default - without the <code>CIBW_PRERELEASE_PYTHONS</code> flag. It's time to build and upload these wheels to PyPI! This release includes CPython 3.13.0rc1, which is guaranteed to be ABI compatible with the final release. Free-threading is still behind a flag/config option. (<a href="">#1950</a>)</li>
<li>✨ Provide a <code>CIBW_ALLOW_EMPTY</code> environment variable as an alternative to the command line flag. (<a href="">#1937</a>)</li>
<li>🐛 Don't use uv on PyPy3.8 on Windows, it stopped working starting in 0.2.25. Note that PyPy 3.8 is EoL. (<a href="">#1868</a>)</li>
<li>🛠 Set the <code>VSCMD_ARG_TGT_ARCH</code> variable based on target arch. (<a href="">#1876</a>)</li>
<li>🛠 Undo cleaner output on pytest 8-8.2 now that 8.3 is out. (<a href="">#1943</a>)</li>
<li>📚 Update examples to use Python 3.12 on host  (cibuildwheel will require Python 3.11+ on the host machine starting in October 2024) (<a href="">#1919</a>)</li>
</ul>
<h2>Version 2.19.2</h2>
<ul>
<li>🐛 Update manylinux2014 pins to versions that support past-EoL CentOS 7 mirrors. (<a href="">#1917</a>)</li>
<li>🐛 Support <code>--no-isolation</code> with <code>build[uv]</code> build-frontend. (<a href="">#1889</a>)</li>
<li>🛠 Provide attestations for releases at <a href="https://github.com/pypa/cibuildwheel/attestations">https://github.com/pypa/cibuildwheel/attestations</a>. (<a href="">#1916</a>)</li>
<li>🛠 Provide CPython 3.13.0b3. (<a href="">#1913</a>)</li>
<li>🛠 Remove some workarounds now that pip 24.1 is available. (<a href="">#1891</a>, <a href="">#1892</a>)</li>
<li>📚 Remove nosetest from our docs. (<a href="">#1821</a>)</li>
<li>📚 Document the macOS ARM workaround for 3.8 on GHA. (<a href="">#1871</a>)</li>
<li>📚 GitLab CI + macOS is now a supported platform with an example. (<a href="">#1911</a>)</li>
</ul>
<h2>Version 2.19.1</h2>
<ul>
<li>🐛 Don't require setup-python on GHA for Pyodide (<a href="">#1868</a>)</li>
<li>🐛 Specify full python path for uv (fixes issue in 0.2.10 &amp; 0.2.11) (<a href="">#1881</a>)</li>
<li>🛠 Update for pip 24.1b2 on CPython 3.13. (<a href="">#1879</a>)</li>
<li>🛠 Fix a warning in our schema generation script. (<a href="">#1866</a>)</li>
<li>🛠 Cleaner output on pytest 8-8.2. (<a href="">#1865</a>)</li>
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
<h3>v2.20.0</h3>
<ul>
<li>🌟 CPython 3.13 wheels are now built by default - without the <code>CIBW_PRERELEASE_PYTHONS</code> flag. It's time to build and upload these wheels to PyPI! This release includes CPython 3.13.0rc1, which is guaranteed to be ABI compatible with the final release. Free-threading is still behind a flag/config option. (<a href="">#1950</a>)</li>
<li>✨ Provide a <code>CIBW_ALLOW_EMPTY</code> environment variable as an alternative to the command line flag. (<a href="">#1937</a>)</li>
<li>🐛 Don't use uv on PyPy3.8 on Windows, it stopped working starting in 0.2.25. Note that PyPy 3.8 is EoL. (<a href="">#1868</a>)</li>
<li>🛠 Set the <code>VSCMD_ARG_TGT_ARCH</code> variable based on target arch. (<a href="">#1876</a>)</li>
<li>🛠 Undo cleaner output on pytest 8-8.2 now that 8.3 is out. (<a href="">#1943</a>)</li>
<li>📚 Update examples to use Python 3.12 on host  (cibuildwheel will require Python 3.11+ on the host machine starting in October 2024) (<a href="">#1919</a>)</li>
</ul>
<h3>v2.19.2</h3>
<ul>
<li>🐛 Update manylinux2014 pins to versions that support past-EoL CentOS 7 mirrors. (<a href="">#1917</a>)</li>
<li>🐛 Support <code>--no-isolation</code> with <code>build[uv]</code> build-frontend. (<a href="">#1889</a>)</li>
<li>🛠 Provide attestations for releases at <a href="https://github.com/pypa/cibuildwheel/attestations">https://github.com/pypa/cibuildwheel/attestations</a>. (<a href="">#1916</a>)</li>
<li>🛠 Provide CPython 3.13.0b3. (<a href="">#1913</a>)</li>
<li>🛠 Remove some workarounds now that pip 21.1 is available. (<a href="">#1891</a>, <a href="">#1892</a>)</li>
<li>📚 Remove nosetest from our docs. (<a href="">#1821</a>)</li>
<li>📚 Document the macOS ARM workaround for 3.8 on GHA. (<a href="">#1871</a>)</li>
<li>📚 GitLab CI + macOS is now a supported platform with an example. (<a href="">#1911</a>)</li>
</ul>
<h3>v2.19.1</h3>
<ul>
<li>🐛 Don't require setup-python on GHA for Pyodide (<a href="">#1868</a>)</li>
<li>🐛 Specify full python path for uv (fixes issue in 0.2.10 &amp; 0.2.11) (<a href="">#1881</a>)</li>
<li>🛠 Update for pip 24.1b2 on CPython 3.13. (<a href="">#1879</a>)</li>
<li>🛠 Fix a warning in our schema generation script. (<a href="">#1866</a>)</li>
<li>🛠 Cleaner output on pytest 8-8.2. (<a href="">#1865</a>)</li>
</ul>
<h3>v2.19.0</h3>
<p>See the <a href="https://iscinumpy.dev/post/cibuildwheel-2-19-0/">release post</a> for more info on new features!</p>
<ul>
<li>🌟 Add Pyodide platform. Set with <code>--platform pyodide</code> or <code>CIBW_PLATFORM: pyodide</code> on Linux with a host Python 3.12 to build WebAssembly wheels. Not accepted on PyPI currently, but usable directly in a website using Pyodide, for live docs, etc. (<a href="">#1456</a>, <a href="">#1859</a>)</li>
<li>🌟 Add <code>build[uv]</code> backend, which will take a pre-existing uv install (or install <code>cibuildwheel[uv]</code>) and use <code>uv</code> for all environment setup and installs on Python 3.8+. This is significantly faster in most cases. (<a href="">#1856</a>)</li>
<li>✨ Add free-threaded macOS builds and update CPython to 3.13.0b2. (<a href="">#1854</a>)</li>
<li>🐛 Issue copying a wheel to a non-existent output dir fixed. (<a href="">#1851</a>, <a href="">#1862</a>)</li>
<li>🐛 Better determinism for the test environment seeding. (<a href="">#1835</a>)</li>
<li>🛠 <code>VIRTUAL_ENV</code> variable now set. (<a href="">#1842</a>)</li>
<li>🛠 Remove a pip&lt;21.3 workaround. (<a href="">#1842</a>)</li>
<li>🛠 Error handling was refactored to use exceptions. (<a href="">#1719</a>)</li>
<li>🛠 Hardcoded paths in tests avoided. (<a href="">#1834</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bd033a4</code></a> Bump version: v2.20.0</li>
<li><a href=""><code>9d023cf</code></a> Build CPython 3.13 by default (<a href="">#1950</a>)</li>
<li><a href=""><code>8a69dbd</code></a> [Bot] Update dependencies (<a href="">#1949</a>)</li>
<li><a href=""><code>147de6f</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1947</a>)</li>
<li><a href=""><code>e217e44</code></a> [Bot] Update dependencies (<a href="">#1946</a>)</li>
<li><a href=""><code>871ef6b</code></a> tests: show xfail traceback summaries again (<a href="">#1943</a>)</li>
<li><a href=""><code>fac72f0</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1944</a>)</li>
<li><a href=""><code>d4c3321</code></a> feat: add <code>CIBW_ALLOW_EMPTY</code> environment variable (<a href="">#1937</a>)</li>
<li><a href=""><code>5af5df4</code></a> [Bot] Update dependencies (<a href="">#1935</a>)</li>
<li><a href=""><code>6c5cf87</code></a> docs: fix nox docs command (<a href="">#1938</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/cibuildwheel/compare/v2.19...v2.20">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=2.19&new-version=2.20)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **Improvements**
	- Updated the wheel building process to utilize the latest version of the `cibuildwheel` action, potentially enhancing performance and reliability.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `db5e967189c3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.