# Issue

**Title:** build(deps): bump pypa/cibuildwheel from 2.23 to 3.3

## Description

Bumps [pypa/cibuildwheel](https://github.com/pypa/cibuildwheel) from 2.23 to 3.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/releases">pypa/cibuildwheel's releases</a>.</em></p>
<blockquote>
<h2>v3.3.0</h2>
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
<h2>v3.2.1</h2>
<ul>
<li>🛠 Update to CPython 3.14.0 final (<a href="">#2614</a>)</li>
<li>🐛 Fix the default MACOSX_DEPLOYMENT_TARGET on Python 3.14 (<a href="">#2613</a>)</li>
<li>📚 Docs improvements (<a href="">#2617</a>)</li>
</ul>
<h2>v3.2.0</h2>
<ul>
<li>✨ Adds GraalPy v25 (Python 3.12) support (<a href="">#2597</a>)</li>
<li>🛠 Update to CPython 3.14.0rc3 (<a href="">#2602</a>)</li>
<li>🛠 Adds CPython 3.14.0 prerelease support for Android, and a number of improvements to Android builds (<a href="">#2568</a>, <a href="">#2591</a>)</li>
<li>🛠 Improvements to testing on Android, passing environment markers when installing the venv, and providing more debug output when build-verbosity is set (<a href="">#2575</a>)</li>
<li>⚠️ PyPy 3.10 was moved to <code>pypy-eol</code> in the <code>enable</code> option, as it is now end-of-life. (<a href="">#2521</a>)</li>
<li>📚 Docs improvements (<a href="">#2574</a>, <a href="">#2601</a>, <a href="">#2598</a>)</li>
</ul>
<h2>v3.1.4</h2>
<ul>
<li>✨ Add a <code>--clean-cache</code> command to clean up our cache (<a href="">#2489</a>)</li>
<li>🛠 Update Python to 3.14rc2 and other patch version bumps (<a href="">#2542</a>, <a href="">#2556</a>)</li>
<li>🛠 Update Pyodide to 0.28.2 (<a href="">#2562</a>, <a href="">#2558</a>)</li>
<li>🐛 Fix resolution with <code>pyodide-build</code> when <code>dependency-versions</code> is set (<a href="">#2548</a>)</li>
<li>🐛 Set <code>CMAKE_FIND_ROOT_PATH_MODE_PACKAGE</code> to <code>BOTH</code> on Android (<a href="">#2547</a>)</li>
<li>🐛 Add <code>patchelf</code> dependency for platforms that can build Android wheels (<a href="">#2552</a>)</li>
<li>🐛 Ignore empty values for <code>CIBW_ARCHS</code> like most other environment variables (<a href="">#2541</a>)</li>
<li>💼 The <code>color</code> and <code>suggest_on_error</code> argparse options are now default in 3.14rc1+ (<a href="">#2554</a>)</li>
<li>💼 Use the virtualenv release URL instead of blob URL (should be more robust) (<a href="">#2555</a>)</li>
<li>🧪 For iOS, lowering to macos-14 is needed for now due to issues with GitHub's runner images (<a href="">#2557</a>)</li>
<li>🧪 Split out platforms iOS and Android in our tests (<a href="">#2519</a>)</li>
<li>🧪 Fix and enable doctests (<a href="">#2546</a>)</li>
<li>📚 Improve our docs on free-threading (<a href="">#2549</a>)</li>
</ul>
<h2>v3.1.3</h2>
<ul>
<li>🐛 Fix bug where &quot;latest&quot; dependencies couldn't update to pip 25.2 on Windows (<a href="">#2537</a>)</li>
<li>🧪 Use pytest-rerunfailures to improve some of our iOS/Android tests (<a href="">#2527</a>, <a href="">#2539</a>)</li>
<li>🧪 Remove some GraalPy Windows workarounds in our tests (<a href="">#2501</a>)</li>
</ul>
<h2>v3.1.2</h2>
<ul>
<li>⚠️  Add an error if <code>CIBW_FREE_THREADING_SUPPORT</code> is set; you are likely missing 3.13t wheels, please use the <code>enable</code>/<code>CIBW_ENABLE</code> (<a href="">#2520</a>)</li>
<li>🛠 <code>riscv64</code> now enabled if you target that architecture, it's now supported on PyPI (<a href="">#2509</a>)</li>
<li>🛠 Add warning when using <code>cpython-experimental-riscv64</code> (no longer needed) (<a href="">#2526</a>, <a href="">#2528</a>)</li>
<li>🛠 iOS versions bumped, fixing issues with 3.14 (now RC 1) (<a href="">#2530</a>)</li>
<li>🐛 Fix bug in Android running wheel from our GitHub Action (<a href="">#2517</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pypa/cibuildwheel/blob/main/docs/changelog.md">pypa/cibuildwheel's changelog</a>.</em></p>
<blockquote>
<h3>v2.23.3</h3>
<p><em>26 April 2025</em></p>
<ul>
<li>🛠 Dependency updates, including Python 3.13.3 (<a href="">#2371</a>)</li>
</ul>
<h3>v2.23.2</h3>
<p><em>24 March 2025</em></p>
<ul>
<li>🐛 Workaround an issue with pyodide builds when running cibuildwheel with a Python that was installed via UV (<a href="">#2328</a> via <a href="">#2331</a>)</li>
<li>🛠 Dependency updates, including a manylinux update that fixes an <a href="">'undefined symbol' error</a> in gcc-toolset (<a href="">#2334</a>)</li>
</ul>
<h3>v2.23.1</h3>
<p><em>15 March 2025</em></p>
<ul>
<li>⚠️ Added warnings when the shorthand values <code>manylinux1</code>, <code>manylinux2010</code>, <code>manylinux_2_24</code>, and <code>musllinux_1_1</code> are used to specify the images in linux builds. The shorthand to these (unmaintainted) images will be removed in v3.0. If you want to keep using these images, explicitly opt-in using the full image URL, which can be found in <a href="https://github.com/pypa/cibuildwheel/blob/v2.23.1/cibuildwheel/resources/pinned_docker_images.cfg">this file</a>. (<a href="">#2312</a>)</li>
<li>🛠 Dependency updates, including a manylinux update which fixes an <a href="">issue with rustup</a>. (<a href="">#2315</a>)</li>
</ul>
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
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>298ed2f</code></a> Bump version: v3.3.1</li>
<li><a href=""><code>f0ff944</code></a> [3.3.x] Update dependencies (<a href="">#2708</a>)</li>
<li><a href=""><code>63fd63b</code></a> Bump version: v3.3.0</li>
<li><a href=""><code>f4fe311</code></a> fix: support Docker 29 (<a href="">#2660</a>)</li>
<li><a href=""><code>f6c8108</code></a> feat: make the <code>{project}</code> placeholder available to <code>repair-wheel-command</code> (#...</li>
<li><a href=""><code>ccbae30</code></a> feat: support uv with Android (<a href="">#2587</a>)</li>
<li><a href=""><code>1337e50</code></a> chore: pytest log_level is better than log_cli_level (<a href="">#2657</a>)</li>
<li><a href=""><code>720f8e2</code></a> feat: add manylinux_2_35 (<a href="">#2656</a>)</li>
<li><a href=""><code>4c7f369</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#2658</a>)</li>
<li><a href=""><code>e1baa60</code></a> chore: enable more Ruff checks (<a href="">#2654</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/cibuildwheel/compare/v2.23...v3.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pypa/cibuildwheel&package-manager=github_actions&previous-version=2.23&new-version=3.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c36677490789`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.