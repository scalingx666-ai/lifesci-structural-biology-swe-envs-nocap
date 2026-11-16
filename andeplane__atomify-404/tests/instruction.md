# Issue

**Title:** chore(deps): bump nanoid from 3.3.15 to 3.3.18

## Description

Bumps [nanoid](https://github.com/ai/nanoid) from 3.3.15 to 3.3.18.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/ai/nanoid/releases">nanoid's releases</a>.</em></p>
<blockquote>
<h2>3.3.18</h2>
<ul>
<li>Fixed infinite loop on async for React Native (by <a href="https://github.com/OvergrowthBeards-JB"><code>@​OvergrowthBeards-JB</code></a>).</li>
</ul>
<h2>3.3.17</h2>
<ul>
<li>Fixed infinite loop on zero size.</li>
</ul>
<h2>3.3.16</h2>
<ul>
<li>Fixed infinite loop on negative size (by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ai/nanoid/blob/3.3.18/CHANGELOG.md">nanoid's changelog</a>.</em></p>
<blockquote>
<h2>3.3.18</h2>
<ul>
<li>Fixed infinite loop on async for React Native (by <a href="https://github.com/OvergrowthBeards-JB"><code>@​OvergrowthBeards-JB</code></a>).</li>
</ul>
<h2>3.3.17</h2>
<ul>
<li>Fixed infinite loop on zero size.</li>
</ul>
<h2>3.3.16</h2>
<ul>
<li>Fixed infinite loop on negative size (by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>9ad9805</code></a> Release 3.3.18 version</li>
<li><a href=""><code>55e50a0</code></a> Update CI action</li>
<li><a href=""><code>e10f8d4</code></a> Update index.native.js (<a href="">#606</a>)</li>
<li><a href=""><code>73d6716</code></a> Release 3.3.17 version</li>
<li><a href=""><code>f9d13f1</code></a> Sync 0 size behaviour with PostCSS 5</li>
<li><a href=""><code>9760e11</code></a> Release 3.3.16 version</li>
<li><a href=""><code>e835c9b</code></a> fix(non-secure): clamp negative size to prevent infinite loop (<a href="">#601</a>)</li>
<li><a href=""><code>96dd086</code></a> Update CI action</li>
<li><a href=""><code>ba0bc3b</code></a> Do not create latest release for v3</li>
<li>See full diff in <a href="https://github.com/ai/nanoid/compare/3.3.15...3.3.18">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=nanoid&package-manager=npm_and_yarn&previous-version=3.3.15&new-version=3.3.18)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `940d1537612e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.