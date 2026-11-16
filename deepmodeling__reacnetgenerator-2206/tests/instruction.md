# Issue

**Title:** build(deps-dev): bump cssnano from 6.1.2 to 7.0.0 in /reacnetgenerator/static/webpack

## Description

Bumps [cssnano](https://github.com/cssnano/cssnano) from 6.1.2 to 7.0.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/cssnano/cssnano/releases">cssnano's releases</a>.</em></p>
<blockquote>
<h2>v7.0.0</h2>
<h2>Breaking changes</h2>
<p>This release drops official support for unmaintained long term support Node.js releases 14 and 16. It also drops support for non-long term support releases 19 and 21 and add support for Node.js 22. Only the <code>package.json</code>  <code>engines</code> field has been updated. The code should otherwise be identical to the previous 6.1.2 release.</p>
<p>Ensuring support for  older Node.js had become difficult as the GitHub actions runners are not available for the latest MacOS and recent pnpm also could not run on CI any more.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>00b7738</code></a> Publish cssnano 7.0</li>
<li><a href=""><code>53f285d</code></a> chore: drop Node.js 14 and 16 from CI, add 22</li>
<li><a href=""><code>0d10597</code></a> chore!: drop support for Node.js 14 and 16</li>
<li><a href=""><code>49d3235</code></a> chore: work around missing older MacOS Node.js versions</li>
<li><a href=""><code>2f9fca3</code></a> chore: update ESLint</li>
<li><a href=""><code>2945d72</code></a> chore: update GitHub action</li>
<li><a href=""><code>94459f0</code></a> chore: update ESLint to 9.1</li>
<li><a href=""><code>e6cbcdb</code></a> chore: update TypeScript to 5.4.5</li>
<li><a href=""><code>d8ada6e</code></a> chore: format files</li>
<li><a href=""><code>904b794</code></a> chore: update ESLint to version 9</li>
<li>Additional commits viewable in <a href="https://github.com/cssnano/cssnano/compare/cssnano@6.1.2...cssnano@7.0.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cssnano&package-manager=npm_and_yarn&previous-version=6.1.2&new-version=7.0.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c224175c44b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.