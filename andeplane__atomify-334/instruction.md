# Issue

**Title:** chore(deps-dev): bump jsdom from 29.0.0 to 29.0.1

## Description

Bumps [jsdom](https://github.com/jsdom/jsdom) from 29.0.0 to 29.0.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jsdom/jsdom/releases">jsdom's releases</a>.</em></p>
<blockquote>
<h2>v29.0.1</h2>
<ul>
<li>Fixed CSS parsing of <code>border</code>, <code>background</code>, and their sub-shorthands containing keywords or <code>var()</code>. (<a href="https://github.com/asamuzaK"><code>@​asamuzaK</code></a>)</li>
<li>Fixed <code>getComputedStyle()</code> to return a more functional <code>CSSStyleDeclaration</code> object, including indexed access support, which regressed in v29.0.0.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>34c7d6e</code></a> 29.0.1</li>
<li><a href=""><code>8ffc811</code></a> Add benchmark for computed style property access</li>
<li><a href=""><code>5f2434c</code></a> Update dependencies and dev dependencies</li>
<li><a href=""><code>1e8a7ff</code></a> Handle global keywords in CSS shorthand property handlers</li>
<li><a href=""><code>0b79509</code></a> Wrap getComputedStyle return value for proper indexed access</li>
<li><a href=""><code>d589a8e</code></a> Fix border shorthand parsing</li>
<li><a href=""><code>e528859</code></a> Modernize release infrastructure</li>
<li>See full diff in <a href="https://github.com/jsdom/jsdom/compare/v29.0.0...v29.0.1">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by [GitHub Actions](<a href="https://www.npmjs.com/~GitHub">https://www.npmjs.com/~GitHub</a> Actions), a new releaser for jsdom since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=jsdom&package-manager=npm_and_yarn&previous-version=29.0.0&new-version=29.0.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.