# Issue

**Title:** chore(deps): bump github/codeql-action from 4.37.3 to 4.37.9 in the github-actions group

## Description

Bumps the github-actions group with 1 update: [github/codeql-action](https://github.com/github/codeql-action).

Updates `github/codeql-action` from 4.37.3 to 4.37.9
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/releases">github/codeql-action's releases</a>.</em></p>
<blockquote>
<h2>v4.37.9</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.4">2.26.4</a>. <a href="">#4106</a></li>
</ul>
<h2>v4.37.8</h2>
<p>No user facing changes.</p>
<h2>v4.37.7</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.3">2.26.3</a>. <a href="">#4085</a></li>
</ul>
<h2>v4.37.6</h2>
<ul>
<li>Changed the default filepath for the new remote file address format that was introduced in CodeQL Action 4.37.0 / 3.37.0 to <code>.github/codeql-config.yml</code> to align it with the suggested path that is used elsewhere. <a href="">#4070</a></li>
</ul>
<h2>v4.37.5</h2>
<ul>
<li>Fixed a bug where a network error while streaming the download of the CodeQL bundle could terminate the <code>init</code> Action instead of falling back to downloading the bundle before extracting it. <a href="">#4061</a></li>
</ul>
<h2>v4.37.4</h2>
<ul>
<li>This version of the CodeQL Action adds support for the <code>tools</code> input for the <code>codeql-action/init</code> step to be specified using a <code>github-codeql-tools</code> <a href="https://docs.github.com/en/organizations/managing-organization-settings/managing-custom-properties-for-repositories-in-your-organization">repository property</a>. This feature will gradually be rolled out following the release of this version. Once rolled out, this allows for the CodeQL CLI version that is used in GitHub-managed workflows, such as Default Setup, to be set to a custom value. For example, customers who run into issues with rate limits when a new CodeQL CLI version is released can set the value to <code>toolcache</code> to always use the CodeQL CLI version that is available in the runner toolcache. For Advanced Setup workflows, the value provided for <code>tools</code> in the workflow definition always takes precedence unless the value of the repository property starts with <code>!</code>. <a href="">#4037</a></li>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.2">2.26.2</a>. <a href="">#4051</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/github/codeql-action/blob/main/CHANGELOG.md">github/codeql-action's changelog</a>.</em></p>
<blockquote>
<h2>4.37.9 - 26 Aug 2026</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.4">2.26.4</a>. <a href="">#4106</a></li>
</ul>
<h2>4.37.8 - 21 Aug 2026</h2>
<p>No user facing changes.</p>
<h2>4.37.7 - 13 Aug 2026</h2>
<ul>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.3">2.26.3</a>. <a href="">#4085</a></li>
</ul>
<h2>4.37.6 - 04 Aug 2026</h2>
<ul>
<li>Changed the default filepath for the new remote file address format that was introduced in CodeQL Action 4.37.0 / 3.37.0 to <code>.github/codeql-config.yml</code> to align it with the suggested path that is used elsewhere. <a href="">#4070</a></li>
</ul>
<h2>4.37.5 - 03 Aug 2026</h2>
<ul>
<li>Fixed a bug where a network error while streaming the download of the CodeQL bundle could terminate the <code>init</code> Action instead of falling back to downloading the bundle before extracting it. <a href="">#4061</a></li>
</ul>
<h2>4.37.4 - 29 Jul 2026</h2>
<ul>
<li>This version of the CodeQL Action adds support for the <code>tools</code> input for the <code>codeql-action/init</code> step to be specified using a <code>github-codeql-tools</code> <a href="https://docs.github.com/en/organizations/managing-organization-settings/managing-custom-properties-for-repositories-in-your-organization">repository property</a>. This feature will gradually be rolled out following the release of this version. Once rolled out, this allows for the CodeQL CLI version that is used in GitHub-managed workflows, such as Default Setup, to be set to a custom value. For example, customers who run into issues with rate limits when a new CodeQL CLI version is released can set the value to <code>toolcache</code> to always use the CodeQL CLI version that is available in the runner toolcache. For Advanced Setup workflows, the value provided for <code>tools</code> in the workflow definition always takes precedence unless the value of the repository property starts with <code>!</code>. <a href="">#4037</a></li>
<li>Update default CodeQL bundle version to <a href="https://github.com/github/codeql-action/releases/tag/codeql-bundle-v2.26.2">2.26.2</a>. <a href="">#4051</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>cdf488f</code></a> Merge pull request <a href="">#4107</a> from github/update-v4.37.9-920ba7cd1</li>
<li><a href=""><code>7243f38</code></a> Update changelog for v4.37.9</li>
<li><a href=""><code>920ba7c</code></a> Merge pull request <a href="">#4106</a> from github/update-bundle/codeql-bundle-v2.26.4</li>
<li><a href=""><code>ecfa6e1</code></a> Add changelog note</li>
<li><a href=""><code>adcdf4a</code></a> Update default bundle to codeql-bundle-v2.26.4</li>
<li><a href=""><code>486fec2</code></a> Merge pull request <a href="">#4099</a> from github/update-supported-enterprise-server-versions</li>
<li><a href=""><code>134624c</code></a> Merge pull request <a href="">#4101</a> from github/dependabot/npm_and_yarn/npm-minor-457d82...</li>
<li><a href=""><code>ff43db8</code></a> Merge pull request <a href="">#4103</a> from github/mergeback/v4.37.8-to-main-db488dde</li>
<li><a href=""><code>4605e03</code></a> Rebuild</li>
<li><a href=""><code>099c869</code></a> Update changelog and version after v4.37.8</li>
<li>Additional commits viewable in <a href="https://github.com/github/codeql-action/compare/v4.37.3...v4.37.9">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github/codeql-action&package-manager=github_actions&previous-version=4.37.3&new-version=4.37.9)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot ignore <dependency name> major version` will close this group update PR and stop Dependabot creating any more for the specific dependency's major version (unless you unignore this specific dependency's major version or upgrade to it yourself)
- `@dependabot ignore <dependency name> minor version` will close this group update PR and stop Dependabot creating any more for the specific dependency's minor version (unless you unignore this specific dependency's minor version or upgrade to it yourself)
- `@dependabot ignore <dependency name>` will close this group update PR and stop Dependabot creating any more for the specific dependency (unless you unignore this specific dependency or upgrade to it yourself)
- `@dependabot unignore <dependency name>` will remove all of the ignore conditions of the specified dependency
- `@dependabot unignore <dependency name> <ignore condition>` will remove the ignore condition of the specified dependency and ignore conditions

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3dabad9100de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.