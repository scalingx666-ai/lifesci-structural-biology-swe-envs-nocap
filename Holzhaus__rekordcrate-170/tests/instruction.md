# Issue

**Title:** build(deps): bump serde from 1.0.219 to 1.0.224

## Description

Bumps [serde](https://github.com/serde-rs/serde) from 1.0.219 to 1.0.224.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/serde-rs/serde/releases">serde's releases</a>.</em></p>
<blockquote>
<h2>v1.0.224</h2>
<ul>
<li>Remove private types being suggested in rustc diagnostics (<a href="">#2979</a>)</li>
</ul>
<h2>v1.0.223</h2>
<ul>
<li>Fix serde_core documentation links (<a href="">#2978</a>)</li>
</ul>
<h2>v1.0.222</h2>
<ul>
<li>Make <code>serialize_with</code> attribute produce code that works if respanned to 2024 edition (<a href="">#2950</a>, thanks <a href="https://github.com/aytey"><code>@​aytey</code></a>)</li>
</ul>
<h2>v1.0.221</h2>
<ul>
<li>Documentation improvements (<a href="">#2973</a>)</li>
<li>Deprecate <code>serde_if_integer128!</code> macro (<a href="">#2975</a>)</li>
</ul>
<h2>v1.0.220</h2>
<ul>
<li>Add a way for data formats to depend on serde traits without waiting for serde_derive compilation: <a href="https://docs.rs/serde_core">https://docs.rs/serde_core</a> (<a href="">#2608</a>, thanks <a href="https://github.com/osiewicz"><code>@​osiewicz</code></a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>1699882</code></a> Release 1.0.224</li>
<li><a href=""><code>840f6ec</code></a> Merge pull request <a href="">#2979</a> from dtolnay/private</li>
<li><a href=""><code>bf9ebea</code></a> Mark every trait impl for a private type with do_not_recommend</li>
<li><a href=""><code>6c316d7</code></a> Release 1.0.223</li>
<li><a href=""><code>a4ac0c2</code></a> Merge pull request <a href="">#2978</a> from dtolnay/htmlrooturl</li>
<li><a href=""><code>ed76364</code></a> Change serde_core's html_root_url to docs.rs/serde_core</li>
<li><a href=""><code>57e21a1</code></a> Release 1.0.222</li>
<li><a href=""><code>bb58726</code></a> Merge pull request <a href="">#2950</a> from aytey/fix_lifetime_issue_2024</li>
<li><a href=""><code>3f69251</code></a> Delete unneeded field of MapDeserializer</li>
<li><a href=""><code>fd4decf</code></a> Merge pull request <a href="">#2976</a> from dtolnay/content</li>
<li>Additional commits viewable in <a href="https://github.com/serde-rs/serde/compare/v1.0.219...v1.0.224">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=serde&package-manager=cargo&previous-version=1.0.219&new-version=1.0.224)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
Dependabot will merge this PR once CI passes on it, as requested by @Swiftb0y.

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `327553fdc85e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.