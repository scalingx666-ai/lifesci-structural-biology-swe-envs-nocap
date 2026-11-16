# Issue

**Title:** Bump actions/setup-python from 5 to 6

## Description

Bumps [actions/setup-python](https://github.com/actions/setup-python) from 5 to 6.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/setup-python/releases">actions/setup-python's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0</h2>
<h2>What's Changed</h2>
<h3>Breaking Changes</h3>
<ul>
<li>Upgrade to node 24 by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/setup-python#1164</a></li>
</ul>
<p>Make sure your runner is on version v2.327.1 or later to ensure compatibility with this release. <a href="https://github.com/actions/runner/releases/tag/v2.327.1">See Release Notes</a></p>
<h3>Enhancements:</h3>
<ul>
<li>Add support for <code>pip-version</code>  by <a href="https://github.com/priyagupta108"><code>@​priyagupta108</code></a> in <a href="">actions/setup-python#1129</a></li>
<li>Enhance reading from .python-version by <a href="https://github.com/krystof-k"><code>@​krystof-k</code></a> in <a href="">actions/setup-python#787</a></li>
<li>Add version parsing from Pipfile by <a href="https://github.com/aradkdj"><code>@​aradkdj</code></a> in <a href="">actions/setup-python#1067</a></li>
</ul>
<h3>Bug fixes:</h3>
<ul>
<li>Clarify pythonLocation behaviour for PyPy and GraalPy in environment variables by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1183</a></li>
<li>Change missing cache directory error to warning  by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1182</a></li>
<li>Add Architecture-Specific PATH Management for Python with --user Flag on Windows by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1122</a></li>
<li>Include python version in PyPy python-version output by <a href="https://github.com/cdce8p"><code>@​cdce8p</code></a> in <a href="">actions/setup-python#1110</a></li>
<li>Update docs: clarification on pip authentication with setup-python by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="">actions/setup-python#1156</a></li>
</ul>
<h3>Dependency updates:</h3>
<ul>
<li>Upgrade idna from 2.9 to 3.7 in /<strong>tests</strong>/data by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-python#843</a></li>
<li>Upgrade form-data to fix critical vulnerabilities <a href="">#182</a> &amp; <a href="">#183</a> by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1163</a></li>
<li>Upgrade setuptools to 78.1.1 to fix path traversal vulnerability in PackageIndex.download by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1165</a></li>
<li>Upgrade actions/checkout from 4 to 5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-python#1181</a></li>
<li>Upgrade <code>@​actions/tool-cache</code> from 2.0.1 to 2.0.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">actions/setup-python#1095</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/krystof-k"><code>@​krystof-k</code></a> made their first contribution in <a href="">actions/setup-python#787</a></li>
<li><a href="https://github.com/cdce8p"><code>@​cdce8p</code></a> made their first contribution in <a href="">actions/setup-python#1110</a></li>
<li><a href="https://github.com/aradkdj"><code>@​aradkdj</code></a> made their first contribution in <a href="">actions/setup-python#1067</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-python/compare/v5...v6.0.0">https://github.com/actions/setup-python/compare/v5...v6.0.0</a></p>
<h2>v5.6.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Workflow updates related to Ubuntu 20.04 by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1065</a></li>
<li>Fix for Candidate Not Iterable Error by <a href="https://github.com/aparnajyothi-y"><code>@​aparnajyothi-y</code></a> in <a href="">actions/setup-python#1082</a></li>
<li>Upgrade semver and <code>@​types/semver</code> by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1091</a></li>
<li>Upgrade prettier from 2.8.8 to 3.5.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1046</a></li>
<li>Upgrade ts-jest from 29.1.2 to 29.3.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">actions/setup-python#1081</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-python/compare/v5...v5.6.0">https://github.com/actions/setup-python/compare/v5...v5.6.0</a></p>
<h2>v5.5.0</h2>
<h2>What's Changed</h2>
<h3>Enhancements:</h3>
<ul>
<li>Support free threaded Python versions like '3.13t' by <a href="https://github.com/colesbury"><code>@​colesbury</code></a> in <a href="">actions/setup-python#973</a></li>
<li>Enhance Workflows: Include ubuntu-arm runners, Add e2e Testing for free threaded and Upgrade <code>@​action/cache</code> from 4.0.0 to 4.0.3 by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="">actions/setup-python#1056</a></li>
<li>Add support for .tool-versions file in setup-python by <a href="https://github.com/mahabaleshwars"><code>@​mahabaleshwars</code></a> in <a href="">actions/setup-python#1043</a></li>
</ul>
<h3>Bug fixes:</h3>
<ul>
<li>Fix architecture for pypy on Linux ARM64 by <a href="https://github.com/mayeut"><code>@​mayeut</code></a> in <a href="">actions/setup-python#1011</a>
This update maps arm64 to aarch64 for Linux ARM64 PyPy installations.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>83679a8</code></a> Bump <code>@​types/node</code> from 24.1.0 to 24.9.1 and update macos-13 to macos-15-intel ...</li>
<li><a href=""><code>bfc4944</code></a> Bump prettier from 3.5.3 to 3.6.2 (<a href="">#1234</a>)</li>
<li><a href=""><code>97aeb3e</code></a> Bump requests from 2.32.2 to 2.32.4 in /<strong>tests</strong>/data (<a href="">#1130</a>)</li>
<li><a href=""><code>443da59</code></a> Bump actions/publish-action from 0.3.0 to 0.4.0 &amp; Documentation update for pi...</li>
<li><a href=""><code>cfd55ca</code></a> graalpy: add graalpy early-access and windows builds (<a href="">#880</a>)</li>
<li><a href=""><code>bba65e5</code></a> Bump typescript from 5.4.2 to 5.9.3 and update docs/advanced-usage.md (<a href="">#1094</a>)</li>
<li><a href=""><code>18566f8</code></a> Improve wording and &quot;fix example&quot; (remove 3.13) on testing against pre-releas...</li>
<li><a href=""><code>2e3e4b1</code></a> Add support for pip-install input (<a href="">#1201</a>)</li>
<li><a href=""><code>4267e28</code></a> Bump urllib3 from 1.26.19 to 2.5.0 in /<strong>tests</strong>/data and document breaking c...</li>
<li><a href=""><code>e797f83</code></a> Upgrade to node 24 (<a href="">#1164</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/actions/setup-python/compare/v5...v6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/setup-python&package-manager=github_actions&previous-version=5&new-version=6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `740cf3437696`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.