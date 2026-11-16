# Issue

**Title:** build(deps): bump parse-display from 0.9.1 to 0.10.0

## Description

Bumps [parse-display](https://github.com/frozenlib/parse-display) from 0.9.1 to 0.10.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/frozenlib/parse-display/blob/master/CHANGELOG.md">parse-display's changelog</a>.</em></p>
<blockquote>
<h2>[0.10.0] - 2024-08-04</h2>
<h3>Changed</h3>
<ul>
<li>Set <code>rust-version</code> to 1.80.0.</li>
<li>In debug mode, it will panic if the result of <code>FromStrFormat::regex</code> varies for the same field depending on the type parameters.</li>
<li>Change the behavior when both <code>#[display(&quot;...&quot;)]</code> and <code>#[from_str(&quot;...&quot;)]</code> are specified for a field. (<a href="">dc14a2b</a>)</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix <code>#[from_str]</code> to not affect <code>Display</code>.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>de8546b</code></a> Version 0.10.0.</li>
<li><a href=""><code>384022a</code></a> Simplify.</li>
<li><a href=""><code>130f2bc</code></a> Fix document.</li>
<li><a href=""><code>126e356</code></a> Fix document for <code>#[display(...)]</code>.</li>
<li><a href=""><code>0c4f68c</code></a> Add documentation regarding the behavior when both <code>#[display(&quot;...&quot;)]</code> and `#...</li>
<li><a href=""><code>dc14a2b</code></a> Change behavior when both '#[display(...)]' and '#[from_str(regex = &quot;...&quot;)]' ...</li>
<li><a href=""><code>5a13cb8</code></a> Add test.</li>
<li><a href=""><code>1b5f31a</code></a> Rename variable.</li>
<li><a href=""><code>43b101f</code></a> Improve error messages for compile errors caused by the expression specified ...</li>
<li><a href=""><code>18d4bdd</code></a> Refactor: Use <code>Vec</code> instead of <code>BTreeMap</code> in <code>ParserBuilder::with</code>.</li>
<li>Additional commits viewable in <a href="https://github.com/frozenlib/parse-display/compare/v0.9.1...v0.10.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=parse-display&package-manager=cargo&previous-version=0.9.1&new-version=0.10.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `65a96e44deac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.