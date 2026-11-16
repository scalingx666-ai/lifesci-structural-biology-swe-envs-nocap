# Issue

**Title:** Bump serde from 1.0.130 to 1.0.131

## Description

Bumps [serde](https://github.com/serde-rs/serde) from 1.0.130 to 1.0.131.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/serde/releases">serde's releases</a>.</em></p>
<blockquote>
<h2>v1.0.131</h2>
<ul>
<li>Avoid <code>unused_results</code> being triggered in generated code for adjacently tagged enum (<a href="https://github-redirect.dependabot.com/serde-rs/serde/issues/2116">#2116</a>, thanks <a href="https://github.com/tyranron"><code>@​tyranron</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ab1ca04</code></a> Release 1.0.131</li>
<li><a href=""><code>fb2fe40</code></a> Touch up PR 2116</li>
<li><a href=""><code>549fac7</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/serde-rs/serde/issues/2116">#2116</a> from tyranron/fix-unused-results</li>
<li><a href=""><code>c375d8b</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/serde-rs/serde/issues/2124">#2124</a> from dtolnay/cbor</li>
<li><a href=""><code>6cf507f</code></a> Change cbor link to new repo</li>
<li><a href=""><code>c3c1641</code></a> Remove workaround for redundant_field_names Clippy bug</li>
<li><a href=""><code>1fcda0e</code></a> Enable pedantic lints on test suite in CI</li>
<li><a href=""><code>8f16ac0</code></a> Move deny(clippy) to command line arguments in the CI job</li>
<li><a href=""><code>737f78c</code></a> Ignore enum_variant_names Clippy lint in test suite</li>
<li><a href=""><code>4a97386</code></a> Clippy if_then_panic lint has been renamed to manual_assert</li>
<li>Additional commits viewable in <a href="https://github.com/serde-rs/serde/compare/v1.0.130...v1.0.131">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde&package-manager=cargo&previous-version=1.0.130&new-version=1.0.131)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1077ab2f6a39`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.