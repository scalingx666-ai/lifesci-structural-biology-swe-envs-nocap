# Issue

**Title:** build(deps-dev): bump cssnano-preset-advanced from 7.0.1 to 7.0.5 in /reacnetgenerator/static/webpack

## Description

Bumps [cssnano-preset-advanced](https://github.com/cssnano/cssnano) from 7.0.1 to 7.0.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/cssnano/cssnano/releases">cssnano-preset-advanced's releases</a>.</em></p>
<blockquote>
<h2>v7.0.5</h2>
<h2>Bug Fixes</h2>
<ul>
<li>Fix layer rule deduping <a href="">cssnano/cssnano#1656</a></li>
</ul>
<h2>v7.0.4</h2>
<h2>Bug fixes</h2>
<ul>
<li>fix(postcss-convert-values): preserve percent sign in border-image-width in <a href="">cssnano/cssnano#1645</a></li>
</ul>
<h2>v7.0.3</h2>
<h2>Bug Fixes</h2>
<ul>
<li>cssnano-preset-default: preserve SVG viewbox and title by default</li>
<li>postcss-convert-values: preserve percent sign in arguments of color functions when needed</li>
<li>postcss-ordered-values: preserve correct order in animation property</li>
<li>postcss-minify-selectors: preserve quotes when escaping selector is required</li>
<li>postcss-discard-comments: do not remove strings that only look like comments in selectors</li>
</ul>
<p>Thanks to <a href="https://github.com/ota-meshi"><code>@​ota-meshi</code></a>  and <a href="https://github.com/seiyab"><code>@​seiyab</code></a> for their contributions to this release.</p>
<h2>v7.0.2</h2>
<h2>Bug Fixes</h2>
<ul>
<li>fix invalid output in some cases where selectors contain comments</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a7855c1</code></a> Publish cssnano 7.0.5</li>
<li><a href=""><code>314868b</code></a> Fix layer rule deduping (<a href="">#1656</a>)</li>
<li><a href=""><code>f14a898</code></a> chore: update all dependencies</li>
<li><a href=""><code>656011d</code></a> chore: update development dependencies</li>
<li><a href=""><code>dff5c42</code></a> chore: update browserslist and postcss-selector-parser</li>
<li><a href=""><code>7e4c9ae</code></a> chore: update development dependencies</li>
<li><a href=""><code>511ca60</code></a> docs: update website for release</li>
<li><a href=""><code>88df72a</code></a> Publish cssnano 7.0.4</li>
<li><a href=""><code>36b3087</code></a> chore: update postcss dev dependency</li>
<li><a href=""><code>d6f9a32</code></a> fix(postcss-convert-values): prserve percent sign in border-image-width</li>
<li>Additional commits viewable in <a href="https://github.com/cssnano/cssnano/compare/cssnano-preset-advanced@7.0.1...cssnano-preset-advanced@7.0.5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cssnano-preset-advanced&package-manager=npm_and_yarn&previous-version=7.0.1&new-version=7.0.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **Chores**
	- Updated the `cssnano-preset-advanced` package to version 7.0.5, improving CSS processing and potentially enhancing performance or bug fixes during the build process.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `23131b8a8099`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.