# Issue

**Title:** Bump qs from 6.14.0 to 6.15.0

## Description

Bumps [qs](https://github.com/ljharb/qs) from 6.14.0 to 6.15.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ljharb/qs/blob/main/CHANGELOG.md">qs's changelog</a>.</em></p>
<blockquote>
<h2><strong>6.15.0</strong></h2>
<ul>
<li>[New] <code>parse</code>: add <code>strictMerge</code> option to wrap object/primitive conflicts in an array (<a href="">#425</a>, <a href="">#122</a>)</li>
<li>[Fix] <code>duplicates</code> option should not apply to bracket notation keys (<a href="">#514</a>)</li>
</ul>
<h2><strong>6.14.2</strong></h2>
<ul>
<li>[Fix] <code>parse</code>: mark overflow objects for indexed notation exceeding <code>arrayLimit</code> (<a href="">#546</a>)</li>
<li>[Fix] <code>arrayLimit</code> means max count, not max index, in <code>combine</code>/<code>merge</code>/<code>parseArrayValue</code></li>
<li>[Fix] <code>parse</code>: throw on <code>arrayLimit</code> exceeded with indexed notation when <code>throwOnLimitExceeded</code> is true (<a href="">#529</a>)</li>
<li>[Fix] <code>parse</code>: enforce <code>arrayLimit</code> on <code>comma</code>-parsed values</li>
<li>[Fix] <code>parse</code>: fix error message to reflect arrayLimit as max index; remove extraneous comments (<a href="">#545</a>)</li>
<li>[Robustness] avoid <code>.push</code>, use <code>void</code></li>
<li>[readme] document that <code>addQueryPrefix</code> does not add <code>?</code> to empty output (<a href="">#418</a>)</li>
<li>[readme] clarify <code>parseArrays</code> and <code>arrayLimit</code> documentation (<a href="">#543</a>)</li>
<li>[readme] replace runkit CI badge with shields.io check-runs badge</li>
<li>[meta] fix changelog typo (<code>arrayLength</code> → <code>arrayLimit</code>)</li>
<li>[actions] fix rebase workflow permissions</li>
</ul>
<h2><strong>6.14.1</strong></h2>
<ul>
<li>[Fix] ensure <code>arrayLimit</code> applies to <code>[]</code> notation as well</li>
<li>[Fix] <code>parse</code>: when a custom decoder returns <code>null</code> for a key, ignore that key</li>
<li>[Refactor] <code>parse</code>: extract key segment splitting helper</li>
<li>[meta] add threat model</li>
<li>[actions] add workflow permissions</li>
<li>[Tests] <code>stringify</code>: increase coverage</li>
<li>[Dev Deps] update <code>eslint</code>, <code>@ljharb/eslint-config</code>, <code>npmignore</code>, <code>es-value-fixtures</code>, <code>for-each</code>, <code>object-inspect</code></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d9b4c66</code></a> v6.15.0</li>
<li><a href=""><code>cb41a54</code></a> [New] <code>parse</code>: add <code>strictMerge</code> option to wrap object/primitive conflicts in...</li>
<li><a href=""><code>88e1563</code></a> [Fix] <code>duplicates</code> option should not apply to bracket notation keys</li>
<li><a href=""><code>9d441d2</code></a> Merge backport release tags v6.0.6–v6.13.3 into main</li>
<li><a href=""><code>85cc8ca</code></a> v6.12.5</li>
<li><a href=""><code>ffc12aa</code></a> v6.11.4</li>
<li><a href=""><code>0506b11</code></a> [actions] update reusable workflows</li>
<li><a href=""><code>6a37faf</code></a> [actions] update reusable workflows</li>
<li><a href=""><code>8e8df5a</code></a> [Fix] fix regressions from robustness refactor</li>
<li><a href=""><code>d60bab3</code></a> v6.10.7</li>
<li>Additional commits viewable in <a href="https://github.com/ljharb/qs/compare/v6.14.0...v6.15.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=qs&package-manager=npm_and_yarn&previous-version=6.14.0&new-version=6.15.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/PDB-REDO/alphafill/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3c2fbefdb6fd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.