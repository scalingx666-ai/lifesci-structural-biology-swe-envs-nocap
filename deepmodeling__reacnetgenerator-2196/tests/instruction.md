# Issue

**Title:** build(deps-dev): bump mini-css-extract-plugin from 2.8.1 to 2.9.0 in /reacnetgenerator/static/webpack

## Description

Bumps [mini-css-extract-plugin](https://github.com/webpack-contrib/mini-css-extract-plugin) from 2.8.1 to 2.9.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack-contrib/mini-css-extract-plugin/releases">mini-css-extract-plugin's releases</a>.</em></p>
<blockquote>
<h2>v2.9.0</h2>
<h2><a href="https://github.com/webpack-contrib/mini-css-extract-plugin/compare/v2.8.1...v2.9.0">2.9.0</a> (2024-04-16)</h2>
<h3>Features</h3>
<ul>
<li>add support for link preload/prefetch (<a href="">#1043</a>) (<a href="">ee25e51</a>)</li>
<li>added the <code>defaultExport</code> option to generate default and named export together (<a href="">#1084</a>) (<a href="">74ae781</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>avoid reloading all csses when hot load (<a href="">#1090</a>) (<a href="">1a56673</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/webpack-contrib/mini-css-extract-plugin/blob/master/CHANGELOG.md">mini-css-extract-plugin's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/webpack-contrib/mini-css-extract-plugin/compare/v2.8.1...v2.9.0">2.9.0</a> (2024-04-16)</h2>
<h3>Features</h3>
<ul>
<li>add support for link preload/prefetch (<a href="">#1043</a>) (<a href="">ee25e51</a>)</li>
<li>added the <code>defaultExport</code> option to generate default and named export together (<a href="">#1084</a>) (<a href="">74ae781</a>)</li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>avoid reloading all csses when hot load (<a href="">#1090</a>) (<a href="">1a56673</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>7cc2789</code></a> chore(release): 2.9.0</li>
<li><a href=""><code>29f0b91</code></a> test: fix (<a href="">#1096</a>)</li>
<li><a href=""><code>ee25e51</code></a> feat: add support for link preload/prefetch (<a href="">#1043</a>)</li>
<li><a href=""><code>1a56673</code></a> fix: avoid reloading all csses when hot load (<a href="">#1090</a>)</li>
<li><a href=""><code>e73061d</code></a> chore: update dependencies to the latest version (<a href="">#1095</a>)</li>
<li><a href=""><code>74ae781</code></a> fix: added the <code>defaultExport</code> option to generate default and named export to...</li>
<li><a href=""><code>92c7eb3</code></a> chore(deps-dev): bump express from 4.18.2 to 4.19.2 (<a href="">#1093</a>)</li>
<li><a href=""><code>51065cc</code></a> chore(deps-dev): bump webpack-dev-middleware from 5.3.3 to 5.3.4 (<a href="">#1091</a>)</li>
<li><a href=""><code>8bf0ad6</code></a> chore(deps-dev): bump follow-redirects from 1.15.5 to 1.15.6 (<a href="">#1088</a>)</li>
<li><a href=""><code>717acf1</code></a> chore: upgrade dependencies to latest version (<a href="">#1086</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/webpack-contrib/mini-css-extract-plugin/compare/v2.8.1...v2.9.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=mini-css-extract-plugin&package-manager=npm_and_yarn&previous-version=2.8.1&new-version=2.9.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74187836263c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.