# Issue

**Title:** build(deps): bump Swatinem/rust-cache from 2.8.1 to 2.8.2

## Description

Bumps [Swatinem/rust-cache](https://github.com/swatinem/rust-cache) from 2.8.1 to 2.8.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/swatinem/rust-cache/releases">Swatinem/rust-cache's releases</a>.</em></p>
<blockquote>
<h2>v2.8.2</h2>
<h2>What's Changed</h2>
<ul>
<li>ci: address lint findings, add zizmor workflow by <a href="https://github.com/woodruffw"><code>@​woodruffw</code></a> in <a href="">Swatinem/rust-cache#262</a></li>
<li>feat: Implement ability to disable adding job ID + rust environment hashes to cache names by <a href="https://github.com/Ryan-Brice"><code>@​Ryan-Brice</code></a> in <a href="">Swatinem/rust-cache#279</a></li>
<li>Don't overwrite env for cargo-metadata call by <a href="https://github.com/MaeIsBad"><code>@​MaeIsBad</code></a> in <a href="">Swatinem/rust-cache#285</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/woodruffw"><code>@​woodruffw</code></a> made their first contribution in <a href="">Swatinem/rust-cache#262</a></li>
<li><a href="https://github.com/Ryan-Brice"><code>@​Ryan-Brice</code></a> made their first contribution in <a href="">Swatinem/rust-cache#279</a></li>
<li><a href="https://github.com/MaeIsBad"><code>@​MaeIsBad</code></a> made their first contribution in <a href="">Swatinem/rust-cache#285</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/Swatinem/rust-cache/compare/v2.8.1...v2.8.2">https://github.com/Swatinem/rust-cache/compare/v2.8.1...v2.8.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/Swatinem/rust-cache/blob/master/CHANGELOG.md">Swatinem/rust-cache's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h2>2.8.2</h2>
<ul>
<li>Don't overwrite env for cargo-metadata call</li>
</ul>
<h2>2.8.1</h2>
<ul>
<li>Set empty <code>CARGO_ENCODED_RUSTFLAGS</code> when retrieving metadata</li>
<li>Various dependency updates</li>
</ul>
<h2>2.8.0</h2>
<ul>
<li>Add support for <code>warpbuild</code> cache provider</li>
<li>Add new <code>cache-workspace-crates</code> feature</li>
</ul>
<h2>2.7.8</h2>
<ul>
<li>Include CPU arch in the cache key</li>
</ul>
<h2>2.7.7</h2>
<ul>
<li>Also cache <code>cargo install</code> metadata</li>
</ul>
<h2>2.7.6</h2>
<ul>
<li>Allow opting out of caching $CARGO_HOME/bin</li>
<li>Add runner OS in cache key</li>
<li>Adds an option to do lookup-only of the cache</li>
</ul>
<h2>2.7.5</h2>
<ul>
<li>Support Cargo.lock format cargo-lock v4</li>
<li>Only run macOsWorkaround() on macOS</li>
</ul>
<h2>2.7.3</h2>
<ul>
<li>Work around upstream problem that causes cache saving to hang for minutes.</li>
</ul>
<h2>2.7.2</h2>
<ul>
<li>Only key by <code>Cargo.toml</code> and <code>Cargo.lock</code> files of workspace members.</li>
</ul>
<h2>2.7.1</h2>
<ul>
<li>Update toml parser to fix parsing errors.</li>
</ul>
<h2>2.7.0</h2>
<ul>
<li>Properly cache <code>trybuild</code> tests.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>779680d</code></a> 2.8.2</li>
<li><a href=""><code>2ea64ef</code></a> Bump smol-toml from 1.4.2 to 1.5.2 in the prd-minor group (<a href="">#287</a>)</li>
<li><a href=""><code>8930d9c</code></a> Bump the actions group with 3 updates (<a href="">#288</a>)</li>
<li><a href=""><code>c071727</code></a> Bump <code>@​actions/io</code> from 1.1.3 to 2.0.0 in the prd-major group (<a href="">#281</a>)</li>
<li><a href=""><code>f2a41b7</code></a> Bump <code>@​types/node</code> from 24.9.0 to 24.10.0 in the dev-minor group (<a href="">#282</a>)</li>
<li><a href=""><code>e306f83</code></a> Don't overwrite env for cargo-metadata call (<a href="">#285</a>)</li>
<li><a href=""><code>c911900</code></a> Merge pull request <a href="">#284</a> from Swatinem/dependabot/github_actions/actions-baeb0...</li>
<li><a href=""><code>3aaed55</code></a> Bump the actions group with 2 updates</li>
<li><a href=""><code>972b315</code></a> Merge pull request <a href="">#283</a> from Swatinem/dependabot/github_actions/actions-b360d...</li>
<li><a href=""><code>07caf06</code></a> Bump taiki-e/install-action from 2.62.45 to 2.62.49 in the actions group</li>
<li>Additional commits viewable in <a href="https://github.com/swatinem/rust-cache/compare/f13886b937689c021905a6b90929199931d60db1...779680da715d629ac1d338a641029a2f4372abb5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=Swatinem/rust-cache&package-manager=github_actions&previous-version=2.8.1&new-version=2.8.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9918398708cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.