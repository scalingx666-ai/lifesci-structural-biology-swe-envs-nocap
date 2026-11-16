# Issue

**Title:** Bump postcss from 8.5.1 to 8.5.14

## Description

Bumps [postcss](https://github.com/postcss/postcss) from 8.5.1 to 8.5.14.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.14</h2>
<ul>
<li>Fixed custom syntax regression (by <a href="https://github.com/43081j"><code>@​43081j</code></a>).</li>
</ul>
<h2>8.5.13</h2>
<ul>
<li>Fixed <code>postcss-scss</code> commend regression.</li>
</ul>
<h2>8.5.12</h2>
<ul>
<li>Fixed reading any file via user-generated CSS.</li>
<li>Added <code>opts.unsafeMap</code> to disable checks.</li>
</ul>
<h2>8.5.11</h2>
<ul>
<li>Fixed nested brackets parsing performance (by <a href="https://github.com/offset"><code>@​offset</code></a>).</li>
</ul>
<h2>8.5.10</h2>
<ul>
<li>Fixed XSS via unescaped <code>&lt;/style&gt;</code> in non-bundler cases (by <a href="https://github.com/TharVid"><code>@​TharVid</code></a>).</li>
</ul>
<h2>8.5.9</h2>
<ul>
<li>Speed up source map encoding paring in case of the error.</li>
</ul>
<h2>8.5.8</h2>
<ul>
<li>Fixed <code>Processor#version</code>.</li>
</ul>
<h2>8.5.7</h2>
<ul>
<li>Improved source map annotation cleaning performance (by CodeAnt AI).</li>
</ul>
<h2>8.5.6</h2>
<ul>
<li>Fixed <code>ContainerWithChildren</code> type discriminating (by <a href="https://github.com/Goodwine"><code>@​Goodwine</code></a>).</li>
</ul>
<h2>8.5.5</h2>
<ul>
<li>Fixed <code>package.json</code>→<code>exports</code> compatibility with some tools (by <a href="https://github.com/JounQin"><code>@​JounQin</code></a>).</li>
</ul>
<h2>8.5.4</h2>
<ul>
<li>Fixed Parcel compatibility issue (by <a href="https://github.com/git-sumitchaudhary"><code>@​git-sumitchaudhary</code></a>).</li>
</ul>
<h2>8.5.3</h2>
<ul>
<li>Added more details to <code>Unknown word</code> error (by <a href="https://github.com/hiepxanh"><code>@​hiepxanh</code></a>).</li>
<li>Fixed types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
<li>Fixed docs (by <a href="https://github.com/catnipan"><code>@​catnipan</code></a>).</li>
</ul>
<h2>8.5.2</h2>
<ul>
<li>Fixed end position of rules with semicolon (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>3ec1394</code></a> Release 8.5.14 version</li>
<li><a href=""><code>f2bb827</code></a> Update dependencies</li>
<li><a href=""><code>d75953d</code></a> Merge pull request <a href="">#2084</a> from 43081j/raw-raws-rawing</li>
<li><a href=""><code>68bd213</code></a> fix: always call <code>raw</code> to retrieve raw values</li>
<li><a href=""><code>af58cf1</code></a> Release 8.5.13 version</li>
<li><a href=""><code>f227dbd</code></a> Temporary ignore pnpm 11 config</li>
<li><a href=""><code>d3abd40</code></a> Update dependencies</li>
<li><a href=""><code>dd06c3e</code></a> Revert stringifier changes because of the conflict with postcss-scss</li>
<li><a href=""><code>ae889c8</code></a> Try to fix CI</li>
<li><a href=""><code>e0093e4</code></a> Move to pnpm 11</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.5.1...8.5.14">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=postcss&package-manager=npm_and_yarn&previous-version=8.5.1&new-version=8.5.14)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3302333d485d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.