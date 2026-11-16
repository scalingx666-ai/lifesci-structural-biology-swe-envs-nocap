# Issue

**Title:** Bump form-data from 4.0.1 to 4.0.6

## Description

Bumps [form-data](https://github.com/form-data/form-data) from 4.0.1 to 4.0.6.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/form-data/form-data/blob/master/CHANGELOG.md">form-data's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/form-data/form-data/compare/v4.0.5...v4.0.6">v4.0.6</a> - 2026-06-12</h2>
<h3>Commits</h3>
<ul>
<li>[Fix] escape CR, LF, and <code>&quot;</code> in field names and filenames <a href=""><code>8dff42c</code></a></li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>auto-changelog</code>, <code>tape</code> <a href=""><code>f31d21e</code></a></li>
<li>[Deps] update <code>hasown</code>, <code>mime-types</code> <a href=""><code>92ae0eb</code></a></li>
<li>[Dev Deps] update <code>js-randomness-predictor</code> <a href=""><code>67b0f65</code></a></li>
</ul>
<h2><a href="https://github.com/form-data/form-data/compare/v4.0.4...v4.0.5">v4.0.5</a> - 2025-11-17</h2>
<h3>Commits</h3>
<ul>
<li>[Tests] Switch to newer v8 prediction library; enable node 24 testing <a href=""><code>16e0076</code></a></li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code> <a href=""><code>5822467</code></a></li>
<li>[Fix] set Symbol.toStringTag in the proper place <a href=""><code>76d0dee</code></a></li>
</ul>
<h2><a href="https://github.com/form-data/form-data/compare/v4.0.3...v4.0.4">v4.0.4</a> - 2025-07-16</h2>
<h3>Commits</h3>
<ul>
<li>[meta] add <code>auto-changelog</code> <a href=""><code>811f682</code></a></li>
<li>[Tests] handle predict-v8-randomness failures in node &lt; 17 and node &gt; 23 <a href=""><code>1d11a76</code></a></li>
<li>[Fix] Switch to using <code>crypto</code> random for boundary values <a href=""><code>3d17230</code></a></li>
<li>[Tests] fix linting errors <a href=""><code>5e34080</code></a></li>
<li>[meta] actually ensure the readme backup isn’t published <a href=""><code>316c82b</code></a></li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code> <a href=""><code>58c25d7</code></a></li>
<li>[meta] fix readme capitalization <a href=""><code>2300ca1</code></a></li>
</ul>
<h2><a href="https://github.com/form-data/form-data/compare/v4.0.2...v4.0.3">v4.0.3</a> - 2025-06-05</h2>
<h3>Fixed</h3>
<ul>
<li>[Fix] <code>append</code>: avoid a crash on nullish values <a href=""><code></code></a></li>
</ul>
<h3>Commits</h3>
<ul>
<li>[eslint] use a shared config <a href=""><code>426ba9a</code></a></li>
<li>[eslint] fix some spacing issues <a href=""><code>2094191</code></a></li>
<li>[Refactor] use <code>hasown</code> <a href=""><code>81ab41b</code></a></li>
<li>[Fix] validate boundary type in <code>setBoundary()</code> method <a href=""><code>8d8e469</code></a></li>
<li>[Tests] add tests to check the behavior of <code>getBoundary</code> with non-strings <a href=""><code>837b8a1</code></a></li>
<li>[Dev Deps] remove unused deps <a href=""><code>870e4e6</code></a></li>
<li>[meta] remove local commit hooks <a href=""><code>e6e83cc</code></a></li>
<li>[Dev Deps] update <code>eslint</code> <a href=""><code>4066fd6</code></a></li>
<li>[meta] fix scripts to use prepublishOnly <a href=""><code>c4bbb13</code></a></li>
</ul>
<h2><a href="https://github.com/form-data/form-data/compare/v4.0.1...v4.0.2">v4.0.2</a> - 2025-02-14</h2>
<h3>Merged</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>64190db</code></a> v4.0.6</li>
<li><a href=""><code>92ae0eb</code></a> [Deps] update <code>hasown</code>, <code>mime-types</code></li>
<li><a href=""><code>f31d21e</code></a> [Dev Deps] update <code>@ljharb/eslint-config</code>, <code>auto-changelog</code>, <code>tape</code></li>
<li><a href=""><code>8dff42c</code></a> [Fix] escape CR, LF, and <code>&quot;</code> in field names and filenames</li>
<li><a href=""><code>67b0f65</code></a> [Dev Deps] update <code>js-randomness-predictor</code></li>
<li><a href=""><code>68ff7dd</code></a> v4.0.5</li>
<li><a href=""><code>5822467</code></a> [Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code></li>
<li><a href=""><code>76d0dee</code></a> [Fix] set Symbol.toStringTag in the proper place</li>
<li><a href=""><code>16e0076</code></a> [Tests] Switch to newer v8 prediction library; enable node 24 testing</li>
<li><a href=""><code>41996f5</code></a> v4.0.4</li>
<li>Additional commits viewable in <a href="https://github.com/form-data/form-data/compare/v4.0.1...v4.0.6">compare view</a></li>
</ul>
</details>
<details>
<summary>Install script changes</summary>
<p>This version modifies <code>prepublish</code> script that runs during installation. Review the package contents before updating.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=form-data&package-manager=npm_and_yarn&previous-version=4.0.1&new-version=4.0.6)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/molstar/VSCoding-Sequence/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2beba147a6b2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.