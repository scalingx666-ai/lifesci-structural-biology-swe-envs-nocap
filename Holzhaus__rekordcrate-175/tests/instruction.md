# Issue

**Title:** build(deps): bump serde from 1.0.224 to 1.0.226

## Description

Bumps [serde](https://github.com/serde-rs/serde) from 1.0.224 to 1.0.226.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/serde/releases">serde's releases</a>.</em></p>
<blockquote>
<h2>v1.0.226</h2>
<ul>
<li>Deduplicate variant matching logic inside generated Deserialize impl for adjacently tagged enums (<a href="">#2935</a>, thanks <a href="https://github.com/Mingun"><code>@​Mingun</code></a>)</li>
</ul>
<h2>v1.0.225</h2>
<ul>
<li>Avoid triggering a deprecation warning in derived Serialize and Deserialize impls for a data structure that contains its own deprecations (<a href="">#2879</a>, thanks <a href="https://github.com/rcrisanti"><code>@​rcrisanti</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>1799547</code></a> Release 1.0.226</li>
<li><a href=""><code>2dbeefb</code></a> Merge pull request <a href="">#2935</a> from Mingun/dedupe-adj-enums</li>
<li><a href=""><code>8a3c29f</code></a> Merge pull request <a href="">#2986</a> from dtolnay/didnotwork</li>
<li><a href=""><code>defc24d</code></a> Remove &quot;did not work&quot; comment from test suite</li>
<li><a href=""><code>2316610</code></a> Merge pull request <a href="">#2929</a> from Mingun/flatten-enum-tests</li>
<li><a href=""><code>c09e2bd</code></a> Add tests for flatten unit variant in adjacently tagged (tag + content) enums</li>
<li><a href=""><code>fe7dcc4</code></a> Test all possible orders of map entries for enum-flatten-in-struct representa...</li>
<li><a href=""><code>a20e66e</code></a> Check serialization in flatten::enum_::internally_tagged::unit_enum_with_unkn...</li>
<li><a href=""><code>1c1a5d9</code></a> Reorder struct_ and newtype tests of adjacently_tagged enums to match order i...</li>
<li><a href=""><code>ee3c237</code></a> Opt in to generate-macro-expansion when building on docs.rs</li>
<li>Additional commits viewable in <a href="https://github.com/serde-rs/serde/compare/v1.0.224...v1.0.226">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde&package-manager=cargo&previous-version=1.0.224&new-version=1.0.226)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a90f5f647afc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.