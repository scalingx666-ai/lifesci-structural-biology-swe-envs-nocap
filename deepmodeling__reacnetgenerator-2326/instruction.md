# Issue

**Title:** build(deps-dev): bump webpack-cli from 5.1.4 to 6.0.1 in /reacnetgenerator/static/webpack

## Description

Bumps [webpack-cli](https://github.com/webpack/webpack-cli) from 5.1.4 to 6.0.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack-cli/releases">webpack-cli's releases</a>.</em></p>
<blockquote>
<h2>v6.0.1</h2>
<h2><a href="https://github.com/webpack/webpack-cli/compare/webpack-cli@6.0.0...webpack-cli@6.0.1">6.0.1</a> (2024-12-20)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>update peer dependencies (<a href="">#4356</a>) (<a href="">7a7e5d9</a>)</li>
</ul>
<h2>v6.0.0</h2>
<h1><a href="https://github.com/webpack/webpack-cli/compare/webpack-cli@5.1.4...webpack-cli@6.0.0">6.0.0</a> (2024-12-19)</h1>
<h3>BREAKING CHANGES</h3>
<ul>
<li>the minimum required Node.js version is <code>18.12.0</code></li>
<li>removed <code>init</code>, <code>loader</code> and <code>plugin</code> commands in favor <a href="https://github.com/webpack/webpack-cli/tree/master/packages/create-webpack-app"><code>create-webpack-app</code></a></li>
<li>dropped support for <code>webpack-dev-server@v4</code></li>
<li>minimum supported webpack version is <code>5.82.0</code></li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>allow to require <code>webpack.config.js</code> in ESM format (<a href="">#4346</a>) (<a href="">5106684</a>)</li>
<li>correct the minimum help output (<a href="">#4057</a>) (<a href="">c727c4f</a>)</li>
<li>gracefully shutting down (<a href="">#4145</a>) (<a href="">90720e2</a>)</li>
<li>improve help output for possible values (<a href="">#4316</a>) (<a href="">4cd5aef</a>)</li>
<li>no serve when dev-server is false (<a href="">#2947</a>) (<a href="">a93e860</a>)</li>
</ul>
<h3>Features</h3>
<ul>
<li>output pnpm version with <code>info</code>/<code>version</code> command (<a href="">#3906</a>) (<a href="">38f3c6f</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/webpack/webpack-cli/blob/master/CHANGELOG.md">webpack-cli's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/webpack/webpack-cli/compare/webpack-cli@6.0.0...webpack-cli@6.0.1">6.0.1</a> (2024-12-20)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>update peer dependencies (<a href="">#4356</a>) (<a href="">7a7e5d9</a>)</li>
</ul>
<h1><a href="https://github.com/webpack/webpack-cli/compare/webpack-cli@5.1.4...webpack-cli@6.0.0">6.0.0</a> (2024-12-19)</h1>
<h3>BREAKING CHANGES</h3>
<ul>
<li>the minimum required Node.js version is <code>18.12.0</code></li>
<li>removed <code>init</code>, <code>loader</code> and <code>plugin</code> commands in favor <a href="https://github.com/webpack/webpack-cli/tree/master/packages/create-webpack-app"><code>create-webpack-app</code></a></li>
<li>dropped support for <code>webpack-dev-server@v4</code></li>
<li>minimum supported webpack version is <code>5.82.0</code></li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>allow to require <code>webpack.config.js</code> in ESM format (<a href="">#4346</a>) (<a href="">5106684</a>)</li>
<li>correct the minimum help output (<a href="">#4057</a>) (<a href="">c727c4f</a>)</li>
<li>gracefully shutting down (<a href="">#4145</a>) (<a href="">90720e2</a>)</li>
<li>improve help output for possible values (<a href="">#4316</a>) (<a href="">4cd5aef</a>)</li>
<li>no serve when dev-server is false (<a href="">#2947</a>) (<a href="">a93e860</a>)</li>
</ul>
<h3>Features</h3>
<ul>
<li>output pnpm version with <code>info</code>/<code>version</code> command (<a href="">#3906</a>) (<a href="">38f3c6f</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>480b33d</code></a> chore(release): publish new version</li>
<li><a href=""><code>7a5071b</code></a> test: fix</li>
<li><a href=""><code>8326501</code></a> fix: better default values</li>
<li><a href=""><code>eab2f39</code></a> fix: less dependencies</li>
<li><a href=""><code>2db1195</code></a> refactor: code</li>
<li><a href=""><code>fca8c00</code></a> fix: logging</li>
<li><a href=""><code>09c7cd7</code></a> fix: reduce package size, avoid <code>*.d.ts</code></li>
<li><a href=""><code>7a7e5d9</code></a> fix: update peer dependencies (<a href="">#4356</a>)</li>
<li><a href=""><code>5405aed</code></a> chore(deps-dev): bump readable-stream in the dependencies group (<a href="">#4355</a>)</li>
<li><a href=""><code>270fdc2</code></a> chore(release): create-webpack-app</li>
<li>Additional commits viewable in <a href="https://github.com/webpack/webpack-cli/compare/webpack-cli@5.1.4...webpack-cli@6.0.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=webpack-cli&package-manager=npm_and_yarn&previous-version=5.1.4&new-version=6.0.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `08f9a6bca40c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.