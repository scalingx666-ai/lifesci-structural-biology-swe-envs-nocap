# Issue

**Title:** Bump word-wrap from 1.2.3 to 1.2.5

## Description

Bumps [word-wrap](https://github.com/jonschlinkert/word-wrap) from 1.2.3 to 1.2.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jonschlinkert/word-wrap/releases">word-wrap's releases</a>.</em></p>
<blockquote>
<h2>1.2.5</h2>
<p><strong>Changes</strong>:</p>
<p>Reverts default value for <code>options.indent</code> to two spaces <code>'  '</code>.</p>
<p><strong>Full Changelog</strong>: <a href="https://github.com/jonschlinkert/word-wrap/compare/1.2.4...1.2.5">https://github.com/jonschlinkert/word-wrap/compare/1.2.4...1.2.5</a></p>
<h2>1.2.4</h2>
<h2>What's Changed</h2>
<ul>
<li>Remove default indent by <a href="https://github.com/mohd-akram"><code>@​mohd-akram</code></a> in <a href="">jonschlinkert/word-wrap#24</a></li>
<li>🔒fix: CVE 2023 26115 (2) by <a href="https://github.com/OlafConijn"><code>@​OlafConijn</code></a> in <a href="">jonschlinkert/word-wrap#41</a></li>
<li>:lock: fix: CVE-2023-26115 by <a href="https://github.com/aashutoshrathi"><code>@​aashutoshrathi</code></a> in <a href="">jonschlinkert/word-wrap#33</a></li>
<li>chore: publish workflow by <a href="https://github.com/OlafConijn"><code>@​OlafConijn</code></a> in <a href="">jonschlinkert/word-wrap#42</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/mohd-akram"><code>@​mohd-akram</code></a> made their first contribution in <a href="">jonschlinkert/word-wrap#24</a></li>
<li><a href="https://github.com/OlafConijn"><code>@​OlafConijn</code></a> made their first contribution in <a href="">jonschlinkert/word-wrap#41</a></li>
<li><a href="https://github.com/aashutoshrathi"><code>@​aashutoshrathi</code></a> made their first contribution in <a href="">jonschlinkert/word-wrap#33</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/jonschlinkert/word-wrap/compare/1.2.3...1.2.4">https://github.com/jonschlinkert/word-wrap/compare/1.2.3...1.2.4</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>207044e</code></a> 1.2.5</li>
<li><a href=""><code>9894315</code></a> revert default indent</li>
<li><a href=""><code>f64b188</code></a> run verb to generate README</li>
<li><a href=""><code>03ea082</code></a> Merge pull request <a href="">#42</a> from jonschlinkert/chore/publish-workflow</li>
<li><a href=""><code>420dce9</code></a> Merge pull request <a href="">#41</a> from jonschlinkert/fix/CVE-2023-26115-2</li>
<li><a href=""><code>bfa694e</code></a> Update .github/workflows/publish.yml</li>
<li><a href=""><code>ace0b3c</code></a> chore: bump version to 1.2.4</li>
<li><a href=""><code>6fd7275</code></a> chore: add publish workflow</li>
<li><a href=""><code>30d6daf</code></a> chore: fix test</li>
<li><a href=""><code>655929c</code></a> chore: remove package-lock</li>
<li>Additional commits viewable in <a href="https://github.com/jonschlinkert/word-wrap/compare/1.2.3...1.2.5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=word-wrap&package-manager=npm_and_yarn&previous-version=1.2.3&new-version=1.2.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/3dmol/3Dmol.js/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2d54469c038`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.