# Issue

**Title:** Bump serde_json from 1.0.72 to 1.0.73

## Description

Bumps [serde_json](https://github.com/serde-rs/json) from 1.0.72 to 1.0.73.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/json/releases">serde_json's releases</a>.</em></p>
<blockquote>
<h2>v1.0.73</h2>
<ul>
<li>Update <code>itoa</code> dependency to 1.0</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>296f718</code></a> Release 1.0.73</li>
<li><a href=""><code>48455de</code></a> Update to itoa 1.0</li>
<li><a href=""><code>b66b0eb</code></a> Track raw pointers in miri CI run</li>
<li><a href=""><code>52eec5e</code></a> Add a miri test job in CI</li>
<li><a href=""><code>aaaf125</code></a> Disable TcpStream test on miri</li>
<li><a href=""><code>f0774c4</code></a> Raise required rustc from 1.31 to 1.36</li>
<li><a href=""><code>c3eddcd</code></a> Collect imports to top of test suite</li>
<li><a href=""><code>a28529d</code></a> Skip ui test when running in miri</li>
<li><a href=""><code>7db1ea9</code></a> Ignore needless_late_init Clippy lint</li>
<li><a href=""><code>fc0ca07</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/serde-rs/json/issues/831">#831</a> from serde-rs/from_u32</li>
<li>Additional commits viewable in <a href="https://github.com/serde-rs/json/compare/v1.0.72...v1.0.73">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde_json&package-manager=cargo&previous-version=1.0.72&new-version=1.0.73)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6bc3bdb4d232`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.