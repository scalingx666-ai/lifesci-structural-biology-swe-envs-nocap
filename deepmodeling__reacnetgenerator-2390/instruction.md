# Issue

**Title:** build(deps): bump actions/upload-pages-artifact from 3 to 4

## Description

Bumps [actions/upload-pages-artifact](https://github.com/actions/upload-pages-artifact) from 3 to 4.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/upload-pages-artifact/releases">actions/upload-pages-artifact's releases</a>.</em></p>
<blockquote>
<h2>v4.0.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Potentially breaking change: hidden files (specifically dotfiles) will not be included in the artifact by <a href="https://github.com/tsusdere"><code>@​tsusdere</code></a> in <a href="">actions/upload-pages-artifact#102</a>
If you need to include dotfiles in your artifact: instead of using this action, create your own artifact according to these requirements <a href="https://github.com/actions/upload-pages-artifact?tab=readme-ov-file#artifact-validation">https://github.com/actions/upload-pages-artifact?tab=readme-ov-file#artifact-validation</a></li>
<li>Pin <code>actions/upload-artifact</code> to SHA by <a href="https://github.com/heavymachinery"><code>@​heavymachinery</code></a> in <a href="">actions/upload-pages-artifact#127</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/upload-pages-artifact/compare/v3.0.1...v4.0.0">https://github.com/actions/upload-pages-artifact/compare/v3.0.1...v4.0.0</a></p>
<h2>v3.0.1</h2>
<h1>Changelog</h1>
<ul>
<li>Group tar's output to prevent it from messing up action logs <a href="https://github.com/SilverRainZ"><code>@​SilverRainZ</code></a> (<a href="">#94</a>)</li>
<li>Update README.md <a href="https://github.com/uiolee"><code>@​uiolee</code></a> (<a href="">#88</a>)</li>
<li>Bump the non-breaking-changes group with 1 update <a href="https://github.com/dependabot"><code>@​dependabot</code></a> (<a href="">#92</a>)</li>
<li>Update Dependabot config to group non-breaking changes <a href="https://github.com/JamesMGreene"><code>@​JamesMGreene</code></a> (<a href="">#91</a>)</li>
<li>Bump actions/checkout from 3 to 4 <a href="https://github.com/dependabot"><code>@​dependabot</code></a> (<a href="">#76</a>)</li>
</ul>
<p>See details of <a href="https://github.com/actions/upload-pages-artifact/compare/v3.0.0...v3.0.1">all code changes</a> since previous release.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>7b1f4a7</code></a> Merge pull request <a href="">#127</a> from heavymachinery/pin-sha</li>
<li><a href=""><code>4cc19c7</code></a> Pin <code>actions/upload-artifact</code> to SHA</li>
<li><a href=""><code>2d163be</code></a> Merge pull request <a href="">#107</a> from KittyChiu/main</li>
<li><a href=""><code>c704843</code></a> fix: linted README</li>
<li><a href=""><code>9605915</code></a> Merge pull request <a href="">#106</a> from KittyChiu/kittychiu/update-readme-1</li>
<li><a href=""><code>e59cdfe</code></a> Update README.md</li>
<li><a href=""><code>a2d6704</code></a> doc: updated usage section in readme</li>
<li><a href=""><code>984864e</code></a> Merge pull request <a href="">#105</a> from actions/Jcambass-patch-1</li>
<li><a href=""><code>45dc788</code></a> Add workflow file for publishing releases to immutable action package</li>
<li><a href=""><code>efaad07</code></a> Merge pull request <a href="">#102</a> from actions/hidden-files</li>
<li>Additional commits viewable in <a href="https://github.com/actions/upload-pages-artifact/compare/v3...v4">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/upload-pages-artifact&package-manager=github_actions&previous-version=3&new-version=4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb83bba733d0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.