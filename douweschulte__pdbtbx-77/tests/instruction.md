# Issue

**Title:** Bump serde from 1.0.131 to 1.0.132

## Description

Bumps [serde](https://github.com/serde-rs/serde) from 1.0.131 to 1.0.132.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/serde/releases">serde's releases</a>.</em></p>
<blockquote>
<h2>v1.0.132</h2>
<ul>
<li>Enable Serialize and Deserialize impls for <code>std::sync::atomic::{AtomicI64, AtomicU64}</code> on riscv64 arch (<a href="https://github-redirect.dependabot.com/serde-rs/serde/issues/2141">#2141</a>, thanks <a href="https://github.com/Avimitin"><code>@​Avimitin</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>77ae1c3</code></a> Release 1.0.132</li>
<li><a href=""><code>b85e281</code></a> Update path to rustc target spec files</li>
<li><a href=""><code>0508cb5</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/serde-rs/serde/issues/2141">#2141</a> from Avimitin/risc-v</li>
<li><a href=""><code>84fdc7d</code></a> Enable atomic64 on riscv64 arch</li>
<li>See full diff in <a href="https://github.com/serde-rs/serde/compare/v1.0.131...v1.0.132">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde&package-manager=cargo&previous-version=1.0.131&new-version=1.0.132)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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