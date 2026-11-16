# Issue

**Title:** Bump qs from 6.15.2 to 6.16.0 in /viewer-frontend

## Description

Bumps [qs](https://github.com/ljharb/qs) from 6.15.2 to 6.16.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ljharb/qs/blob/main/CHANGELOG.md">qs's changelog</a>.</em></p>
<blockquote>
<h2><strong>6.16.0</strong></h2>
<ul>
<li>[New] <code>stringify</code>: add a <code>depth</code> option to bound recursion depth (default <code>Infinity</code>)</li>
<li>[Fix] stringify: serialize Date values when a filter is provided</li>
<li>[Fix] <code>parse</code>: enforce <code>arrayLimit</code> on comma groups under <code>[]=</code> when <code>throwOnLimitExceeded</code> is set</li>
<li>[Fix] <code>parse</code>: flatten a collection appended to an overflowed array (<a href="">#571</a>)</li>
<li>[Fix] <code>utils</code>: <code>isBuffer</code>: do not invoke a non-callable <code>constructor.isBuffer</code></li>
<li>[Fix] <code>stringify</code>: do not let <code>allowEmptyArrays</code> skip cycle detection (or drop own keys) on an empty array with own properties</li>
<li>[Fix] <code>stringify</code>: encode dots in a top-level key with a primitive value when encodeDotInKeys is set (<a href="">#562</a>)</li>
<li>[Docs] threat model: clarify <code>stringify</code> deep-nesting DoS is caller-bounded</li>
<li>[Docs] clarify <code>arrayLimit</code> is a representation threshold, not an element-count cap</li>
<li>[Tests] <code>parse</code>: remove a test that pinned <code>[]=</code> comma groups escaping <code>arrayLimit</code></li>
<li>[Tests] <code>stringify</code>: pin current <code>encodeDotInKeys</code> separator-dot behavior</li>
<li>[Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code></li>
<li>[Dev Deps] update <code>eslint</code>, <code>evalmd</code></li>
</ul>
<h2><strong>6.15.3</strong></h2>
<ul>
<li>[Fix] <code>parse</code>: enforce <code>throwOnLimitExceeded</code> for cumulative array growth via <code>combine</code>/<code>merge</code></li>
<li>[Fix] <code>utils</code>: respect encoding of surrogate pairs across chunks (<a href="">#559</a>)</li>
<li>[Robustness] <code>parse</code>: throw the <code>arrayLimit</code> error before splitting oversized comma values</li>
<li>[Robustness] <code>utils.merge</code> / <code>utils.assign</code>: avoid invoking <code>__proto__</code> setter when copying own properties</li>
<li>[Robustness] <code>utils</code>: enforce <code>arrayLimit</code> consistently across <code>merge</code>'s array paths</li>
<li>[Perf] <code>utils</code>: make <code>compact</code> O(n) via a side-channel visited-set instead of <code>Array.indexOf</code></li>
<li>[Deps] update <code>side-channel</code></li>
<li>[Dev Deps] update <code>eslint</code>, <code>mock-property</code>, <code>tape</code></li>
<li>[Tests] <code>parse</code>: characterize current lenient handling of unbalanced bracket keys (<a href="">#558</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bb9379e</code></a> v6.16.0</li>
<li><a href=""><code>62fd254</code></a> [Fix] stringify: serialize Date values when a filter is provided</li>
<li><a href=""><code>8859c37</code></a> [Fix] <code>parse</code>: enforce <code>arrayLimit</code> on comma groups under <code>[]=</code> when `throwOn...</li>
<li><a href=""><code>8079adc</code></a> [Tests] <code>parse</code>: remove a test that pinned <code>[]=</code> comma groups escaping `array...</li>
<li><a href=""><code>d56f48c</code></a> [Fix] <code>parse</code>: flatten a collection appended to an overflowed array</li>
<li><a href=""><code>e83d321</code></a> [Fix] <code>utils</code>: <code>isBuffer</code>: do not invoke a non-callable <code>constructor.isBuffer</code></li>
<li><a href=""><code>7e87a07</code></a> [Dev Deps] update <code>@ljharb/eslint-config</code>, <code>eslint</code></li>
<li><a href=""><code>9a76af2</code></a> [Dev Deps] update <code>eslint</code>, <code>evalmd</code></li>
<li><a href=""><code>3a890d4</code></a> [Dev Deps] update <code>eslint</code>, <code>evalmd</code></li>
<li><a href=""><code>b433a9b</code></a> [Fix] <code>stringify</code>: do not let <code>allowEmptyArrays</code> skip cycle detection (or dro...</li>
<li>Additional commits viewable in <a href="https://github.com/ljharb/qs/compare/v6.15.2...v6.16.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=qs&package-manager=npm_and_yarn&previous-version=6.15.2&new-version=6.16.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e62c436bf987`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.