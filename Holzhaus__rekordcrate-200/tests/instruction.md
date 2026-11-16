# Issue

**Title:** build(deps): bump modular-bitfield from 0.13.0 to 0.13.1

## Description

Bumps [modular-bitfield](https://github.com/modular-bitfield/modular-bitfield) from 0.13.0 to 0.13.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/modular-bitfield/modular-bitfield/releases">modular-bitfield's releases</a>.</em></p>
<blockquote>
<h2>v0.13.1</h2>
<h1>Bug fixes</h1>
<ul>
<li><code>#[repr]</code> attributes containing lists like <code>align(..)</code> are now properly handled. Thanks, <a href="https://github.com/minty99"><code>@​minty99</code></a>! (<a href="">#132</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>b7c7f9d</code></a> Updating metadata for 0.13.1</li>
<li><a href=""><code>bb08b50</code></a> Properly retain repr arguments with parenthesis when re-emitting attributes</li>
<li><a href=""><code>aaca039</code></a> Update trybuild tests for new stable compiler</li>
<li><a href=""><code>a460120</code></a> Updating source version to 0.13.1-pre</li>
<li>See full diff in <a href="https://github.com/modular-bitfield/modular-bitfield/compare/v0.13.0...v0.13.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=modular-bitfield&package-manager=cargo&previous-version=0.13.0&new-version=0.13.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03518d29ba3d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.