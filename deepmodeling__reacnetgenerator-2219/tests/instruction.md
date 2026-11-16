# Issue

**Title:** build(deps-dev): bump sass from 1.76.0 to 1.77.0 in /reacnetgenerator/static/webpack

## Description

Bumps [sass](https://github.com/sass/dart-sass) from 1.76.0 to 1.77.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/releases">sass's releases</a>.</em></p>
<blockquote>
<h2>Dart Sass 1.77.0</h2>
<p>To install Sass 1.77.0, download one of the packages below and <a href="https://katiek2.github.io/path-doc/">add it to your PATH</a>, or see <a href="https://sass-lang.com/install">the Sass website</a> for full installation instructions.</p>
<h1>Changes</h1>
<ul>
<li><em>Don't</em> throw errors for at-rules in keyframe blocks.</li>
</ul>
<p>See the <a href="https://github.com/sass/dart-sass/blob/master/CHANGELOG.md#1770">full changelog</a> for changes in earlier releases.</p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/sass/dart-sass/blob/main/CHANGELOG.md">sass's changelog</a>.</em></p>
<blockquote>
<h2>1.77.0</h2>
<ul>
<li><em>Don't</em> throw errors for at-rules in keyframe blocks.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>85f39d5</code></a> Allow at-rules in <code>@keyframes</code> blocks (<a href="">#2236</a>)</li>
<li>See full diff in <a href="https://github.com/sass/dart-sass/compare/1.76.0...1.77.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sass&package-manager=npm_and_yarn&previous-version=1.76.0&new-version=1.77.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37b0bef6fd9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.