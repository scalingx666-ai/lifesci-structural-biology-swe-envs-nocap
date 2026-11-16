# Issue

**Title:** build(deps-dev): bump cssnano from 7.0.6 to 7.0.7 in /reacnetgenerator/static/webpack

## Description

Bumps [cssnano](https://github.com/cssnano/cssnano) from 7.0.6 to 7.0.7.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/cssnano/cssnano/releases">cssnano's releases</a>.</em></p>
<blockquote>
<h2>cssnano@7.0.7</h2>
<h2>What's Changed</h2>
<ul>
<li>fix: update browserslist by <a href="https://github.com/ludofischer"><code>@​ludofischer</code></a> in <a href="">cssnano/cssnano#1675</a></li>
<li>fix: update postcss peer dependency to version without vulnerabilities by <a href="https://github.com/ludofischer"><code>@​ludofischer</code></a> in <a href="">cssnano/cssnano#1676</a></li>
<li>fix: update TypeScript declarations by <a href="https://github.com/ludofischer"><code>@​ludofischer</code></a> in <a href="">cssnano/cssnano#1685</a></li>
<li>perf: load default preset in startup by <a href="https://github.com/43081j"><code>@​43081j</code></a> in <a href="">cssnano/cssnano#1691</a></li>
<li>Add support for selector order preservation to postcss-minify-selectors by <a href="https://github.com/ezzak"><code>@​ezzak</code></a> in <a href="">cssnano/cssnano#1688</a></li>
<li>fix(postcss-convert-values): preserve percent sign in percentage values in at-rules with double quotes  by <a href="https://github.com/aramikuto"><code>@​aramikuto</code></a> in <a href="">cssnano/cssnano#1695</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/cssnano/cssnano/compare/cssnano@7.0.6...cssnano@7.0.7">https://github.com/cssnano/cssnano/compare/cssnano@7.0.6...cssnano@7.0.7</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>fcd4d1d</code></a> Publish cssnano 7.0.7</li>
<li><a href=""><code>eff4d88</code></a> chore: update development deps</li>
<li><a href=""><code>171b669</code></a> chore: update dependencies to latest minor version</li>
<li><a href=""><code>e3211fa</code></a> fix(postcss-convert-values): preserve percent sign in percentage values in at...</li>
<li><a href=""><code>70cffd5</code></a> chore: regenerate types</li>
<li><a href=""><code>bdd3edb</code></a> chore: update development dependencies</li>
<li><a href=""><code>9e9e111</code></a> chore: update postcss-calc (<a href="">#1692</a>)</li>
<li><a href=""><code>2e5a24f</code></a> Add support for selector order preservation to postcss-minify-selectors (<a href="">#1688</a>)</li>
<li><a href=""><code>a702d25</code></a> perf: load default preset in startup</li>
<li><a href=""><code>9897eac</code></a> chore: update TypeScript to 5.8.2</li>
<li>Additional commits viewable in <a href="https://github.com/cssnano/cssnano/compare/cssnano@7.0.6...cssnano@7.0.7">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cssnano&package-manager=npm_and_yarn&previous-version=7.0.6&new-version=7.0.7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5b75986f377`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.