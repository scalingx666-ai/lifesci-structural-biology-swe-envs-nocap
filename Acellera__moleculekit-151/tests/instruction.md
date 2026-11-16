# Issue

**Title:** Bump vite from 8.0.14 to 8.0.16 in /viewer-frontend

## Description

Bumps [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite) from 8.0.14 to 8.0.16.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/releases">vite's releases</a>.</em></p>
<blockquote>
<h2>v8.0.16</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.16/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
<h2>v8.0.15</h2>
<p>Please refer to <a href="https://github.com/vitejs/vite/blob/v8.0.15/packages/vite/CHANGELOG.md">CHANGELOG.md</a> for details.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/blob/main/packages/vite/CHANGELOG.md">vite's changelog</a>.</em></p>
<blockquote>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.0.15...v8.0.16">8.0.16</a> (2026-06-01)<!-- raw HTML omitted --></h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>deps:</strong> reject UNC paths for launch-editor-middleware (<a href="">#22571</a>) (<a href="">50b9512</a>)</li>
<li>reject windows alternate paths (<a href="">#22572</a>) (<a href="">dc245c7</a>)</li>
</ul>
<h2><!-- raw HTML omitted --><a href="https://github.com/vitejs/vite/compare/v8.0.14...v8.0.15">8.0.15</a> (2026-06-01)<!-- raw HTML omitted --></h2>
<h3>Features</h3>
<ul>
<li>send 408 on request timeout (<a href="">#22476</a>) (<a href="">c85c9ee</a>)</li>
<li>update rolldown to 1.0.3 (<a href="">#22538</a>) (<a href="">646dbed</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>capitalize error messages and remove spurious space in parse error (<a href="">#22488</a>) (<a href="">85a0eff</a>)</li>
<li><strong>deps:</strong> update all non-major dependencies (<a href="">#22511</a>) (<a href="">2686d7d</a>)</li>
<li><strong>dev:</strong> fix html-proxy cache key mismatch for /@fs/ HTML paths (<a href="">#21762</a>) (<a href="">47c4213</a>)</li>
<li><strong>glob:</strong> error on relative glob in virtual module when no files match (<a href="">#22497</a>) (<a href="">5c8e98f</a>)</li>
<li><strong>optimizer:</strong> close the rolldown bundle when write() rejects (<a href="">#22528</a>) (<a href="">e3cfb9d</a>)</li>
<li><strong>resolve:</strong> provide onWarn for viteResolvePlugin in JS plugin containers (<a href="">#22509</a>) (<a href="">40985f1</a>)</li>
</ul>
<h3>Miscellaneous Chores</h3>
<ul>
<li><strong>deps:</strong> update rolldown-related dependencies (<a href="">#22566</a>) (<a href="">3052a67</a>)</li>
</ul>
<h3>Code Refactoring</h3>
<ul>
<li>correct logic in <code>collectAllModules</code> function (<a href="">#22562</a>) (<a href="">6978a9c</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f94df87</code></a> release: v8.0.16</li>
<li><a href=""><code>dc245c7</code></a> fix: reject windows alternate paths (<a href="">#22572</a>)</li>
<li><a href=""><code>50b9512</code></a> fix(deps): reject UNC paths for launch-editor-middleware (<a href="">#22571</a>)</li>
<li><a href=""><code>8d1b019</code></a> release: v8.0.15</li>
<li><a href=""><code>2686d7d</code></a> fix(deps): update all non-major dependencies (<a href="">#22511</a>)</li>
<li><a href=""><code>3052a67</code></a> chore(deps): update rolldown-related dependencies (<a href="">#22566</a>)</li>
<li><a href=""><code>e3cfb9d</code></a> fix(optimizer): close the rolldown bundle when write() rejects (<a href="">#22528</a>)</li>
<li><a href=""><code>6978a9c</code></a> refactor: correct logic in <code>collectAllModules</code> function (<a href="">#22562</a>)</li>
<li><a href=""><code>646dbed</code></a> feat: update rolldown to 1.0.3 (<a href="">#22538</a>)</li>
<li><a href=""><code>85a0eff</code></a> fix: capitalize error messages and remove spurious space in parse error (<a href="">#22488</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/vitejs/vite/commits/v8.0.16/packages/vite">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vite&package-manager=npm_and_yarn&previous-version=8.0.14&new-version=8.0.16)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/Acellera/moleculekit/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56636fa8185f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.