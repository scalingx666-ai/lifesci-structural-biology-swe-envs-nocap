# Issue

**Title:** build(deps): bump Swatinem/rust-cache from 2.9.1 to 2.9.2

## Description

Bumps [Swatinem/rust-cache](https://github.com/swatinem/rust-cache) from 2.9.1 to 2.9.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/swatinem/rust-cache/releases">Swatinem/rust-cache's releases</a>.</em></p>
<blockquote>
<h2>v2.9.2</h2>
<h2>What's Changed</h2>
<ul>
<li>Typofix by <a href="https://github.com/23Skidoo"><code>@​23Skidoo</code></a> in <a href="">Swatinem/rust-cache#316</a></li>
<li>fix: include target names in build/ and .fingerprint/ cleanup by <a href="https://github.com/eitsupi"><code>@​eitsupi</code></a> in <a href="">Swatinem/rust-cache#317</a></li>
<li>fix: include cdylib/rlib/dylib/staticlib targets in build and fingerprint cleanup by <a href="https://github.com/eitsupi"><code>@​eitsupi</code></a> in <a href="">Swatinem/rust-cache#320</a></li>
<li>Scan content of <code>$CARGO_HOME/bin</code> on restore instead of relying on <code>cargo install</code> metadata  by <a href="https://github.com/clechasseur"><code>@​clechasseur</code></a> in <a href="">Swatinem/rust-cache#325</a></li>
<li>docs: Update checkout action version to latest by <a href="https://github.com/sondrelg"><code>@​sondrelg</code></a> in <a href="">Swatinem/rust-cache#345</a></li>
<li>Fix Windows cache path validation after Rollup migration by <a href="https://github.com/eitsupi"><code>@​eitsupi</code></a> in <a href="">Swatinem/rust-cache#355</a></li>
<li>fix: support Cargo V2 build dir layout by <a href="https://github.com/claytonwramsey"><code>@​claytonwramsey</code></a> in <a href="">Swatinem/rust-cache#371</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/23Skidoo"><code>@​23Skidoo</code></a> made their first contribution in <a href="">Swatinem/rust-cache#316</a></li>
<li><a href="https://github.com/eitsupi"><code>@​eitsupi</code></a> made their first contribution in <a href="">Swatinem/rust-cache#317</a></li>
<li><a href="https://github.com/clechasseur"><code>@​clechasseur</code></a> made their first contribution in <a href="">Swatinem/rust-cache#325</a></li>
<li><a href="https://github.com/sondrelg"><code>@​sondrelg</code></a> made their first contribution in <a href="">Swatinem/rust-cache#345</a></li>
<li><a href="https://github.com/claytonwramsey"><code>@​claytonwramsey</code></a> made their first contribution in <a href="">Swatinem/rust-cache#371</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/Swatinem/rust-cache/compare/v2.9.1...v2.9.2">https://github.com/Swatinem/rust-cache/compare/v2.9.1...v2.9.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/Swatinem/rust-cache/blob/master/CHANGELOG.md">Swatinem/rust-cache's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h2>2.9.2</h2>
<ul>
<li>Fix <code>credentials.toml</code> cleanup</li>
<li>Improvements to cleanup, preserving more valid targets</li>
<li>Improvements to <code>cargo install</code> handling</li>
<li>Correctly sort/dedupe Rust versions</li>
</ul>
<h2>2.9.1</h2>
<ul>
<li>Fix regression in hash calculation</li>
</ul>
<h2>2.9.0</h2>
<ul>
<li>Update to <code>node24</code></li>
<li>Support running from within a <code>nix</code> shell</li>
<li>Consider all installed toolchains for cache key</li>
<li>Use case-insensitive comparison to determine exact cache hit</li>
</ul>
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
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6323deb</code></a> 2.9.2</li>
<li><a href=""><code>b16e8d7</code></a> bump rollup and rebuild</li>
<li><a href=""><code>3bf42ac</code></a> invert target/profile check in cleanup</li>
<li><a href=""><code>6e5b278</code></a> correctly sort and dedupe Rust versions</li>
<li><a href=""><code>5adc05f</code></a> Bump the actions group across 1 directory with 3 updates (<a href="">#368</a>)</li>
<li><a href=""><code>66b1e95</code></a> fix: support Cargo V2 build dir layout (<a href="">#371</a>)</li>
<li><a href=""><code>72d126e</code></a> Merge pull request <a href="">#367</a> from Swatinem/dependabot/npm_and_yarn/dev-patch-2b495...</li>
<li><a href=""><code>48968d2</code></a> Bump the dev-patch group with 2 updates</li>
<li><a href=""><code>9f151ac</code></a> update dependencies, rebuild</li>
<li><a href=""><code>0e24e5d</code></a> Bump the actions group across 1 directory with 6 updates (<a href="">#364</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/swatinem/rust-cache/compare/c19371144df3bb44fab255c43d04cbc2ab54d1c4...6323deb102c322ba6fcbdcafc7e3dddab59af2b6">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=Swatinem/rust-cache&package-manager=github_actions&previous-version=2.9.1&new-version=2.9.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e8574896b099`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.