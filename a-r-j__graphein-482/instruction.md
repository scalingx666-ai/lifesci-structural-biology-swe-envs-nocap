# Issue

**Title:** Bump soupsieve from 2.8.4 to 2.9

## Description

Bumps [soupsieve](https://github.com/facelessuser/soupsieve) from 2.8.4 to 2.9.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/facelessuser/soupsieve/releases">soupsieve's releases</a>.</em></p>
<blockquote>
<h2>2.9</h2>
<ul>
<li><strong>NEW</strong>: Drop Python 3.9 support.</li>
<li><strong>NEW</strong>: Lazy compile selector patterns to improve initial import speed.</li>
<li><strong>FIX</strong>: Correct <code>:nth-child</code>/<code>:nth-of-type</code> (and <code>-last-</code> variants) for <code>An+B</code> values whose sequence steps onto
index 0 or onto the last child (e.g. <code>:nth-child(2n-2)</code>, <code>:nth-child(n-1)</code>, <code>:nth-child(n+5)</code>), which previously
matched the wrong elements or nothing at all (<a href="https://github.com/gaoflow"><code>@​gaoflow</code></a>).</li>
<li><strong>FIX</strong>: More efficient CSS ID matching (<a href="https://github.com/kaimandalic"><code>@​kaimandalic</code></a>).</li>
<li><strong>FIX</strong>: Fix inefficient trimming of comments and white space (<a href="https://github.com/kaimandalic"><code>@​kaimandalic</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8763f91</code></a> Format changelog message</li>
<li><a href=""><code>cf198fc</code></a> Fix inefficient trimming of comments and white space</li>
<li><a href=""><code>ce44e49</code></a> Merge commit from fork</li>
<li><a href=""><code>751c57b</code></a> Fix :nth-child/:nth-of-type matching for An+B index boundaries (<a href="">#297</a>)</li>
<li><a href=""><code>08e9ede</code></a> Drop Python 3.9</li>
<li><a href=""><code>d6e6830</code></a> Rework selector mapping</li>
<li><a href=""><code>d2d1581</code></a> Utilize property for accessing lazy regular expression pattern</li>
<li><a href=""><code>b8701de</code></a> Build patterns and regexes lazily in css_parser (<a href="">#296</a>)</li>
<li>See full diff in <a href="https://github.com/facelessuser/soupsieve/compare/2.8.4...2.9">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=soupsieve&package-manager=uv&previous-version=2.8.4&new-version=2.9)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/a-r-j/graphein/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `016113de0610`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.