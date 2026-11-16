# Issue

**Title:** Bump kaleido from 1.1.0 to 1.2.0

## Description

Bumps [kaleido](https://github.com/plotly/kaleido) from 1.1.0 to 1.2.0.
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d93391e</code></a> Add one off test for complicated plotly obj.</li>
<li><a href=""><code>1037810</code></a> Improve error info of ImportError.</li>
<li><a href=""><code>7972d69</code></a> Create script for pickling and caching pickles.</li>
<li><a href=""><code>064e0e5</code></a> Update choreo.</li>
<li><a href=""><code>9a01caa</code></a> Fix Changelog</li>
<li><a href=""><code>a975d3f</code></a> Remove now unnecesary dep check.</li>
<li><a href=""><code>666bd99</code></a> Fix tests given new import.</li>
<li><a href=""><code>0e315dd</code></a> Remove plotly dep and make import optional.</li>
<li><a href=""><code>74048f4</code></a> Force use of new choreographer.</li>
<li><a href=""><code>b28b39d</code></a> Activate new choreographer custom encoder</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/kaleido/compare/v1.1.0...v1.2.0">compare view</a></li>
</ul>
</details>
<br />

<details>
<summary>Most Recent Ignore Conditions Applied to This Pull Request</summary>

| Dependency Name | Ignore Conditions |
| --- | --- |
| kaleido | [< 0.3, > 0.2.1] |
</details>

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=kaleido&package-manager=pip&previous-version=1.1.0&new-version=1.2.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb1d7bd22bcd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.