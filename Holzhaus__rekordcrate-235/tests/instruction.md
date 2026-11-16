# Issue

**Title:** build(deps): bump rust-toolchain from 1.94 to 1.95

## Description

Bumps [rust-toolchain](https://github.com/rust-lang/rust) from 1.94 to 1.95.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/releases">rust-toolchain's releases</a>.</em></p>
<blockquote>
<h2>Rust 1.95.0</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Stabilize <code>if let</code> guards on match arms</a></li>
<li><a href=""><code>irrefutable_let_patterns</code> lint no longer lints on let chains</a></li>
<li><a href="">Support importing path-segment keywords with renaming</a></li>
<li><a href="">Stabilize inline assembly for PowerPC and PowerPC64</a></li>
<li><a href="">const-eval: be more consistent in the behavior of padding during typed copies</a></li>
<li><a href="">Const blocks are no longer evaluated to determine if expressions involving fallible operations can implicitly be constant-promoted.</a>. Expressions whose ability to implicitly be promoted would depend on the result of a const block are no longer implicitly promoted.</li>
<li><a href="">Make operational semantics of pattern matching independent of crate and module</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Compiler</h2>
<ul>
<li><a href="">Stabilize <code>--remap-path-scope</code> for controlling the scoping of how paths get remapped in the resulting binary</a></li>
<li><a href="">Apply patches for CVE-2026-6042 and CVE-2026-40200 to vendored musl</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Promote <code>powerpc64-unknown-linux-musl</code> to Tier 2 with host tools</a></li>
<li><a href="">Promote <code>aarch64-apple-tvos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-tvos-sim</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-watchos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-watchos-sim</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-visionos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-visionos-sim</code> to Tier 2</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a> for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href=""><code>thread::scope</code>: document how join interacts with TLS destructors</a></li>
<li><a href="">Speed up <code>str::contains</code> on aarch64 targets with <code>neon</code> target feature enabled by default</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/mem/union.MaybeUninit.html#impl-From%3CMaybeUninit%3C%5BT;+N%5D%3E%3E-for-%5BMaybeUninit%3CT%3E;+N%5D"><code>MaybeUninit&lt;[T; N]&gt;: From&lt;[MaybeUninit&lt;T&gt;; N]&gt;</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/mem/union.MaybeUninit.html#impl-AsRef%3C%5BMaybeUninit%3CT%3E;+N%5D%3E-for-MaybeUninit%3C%5BT;+N%5D%3E"><code>MaybeUninit&lt;[T; N]&gt;: AsRef&lt;[MaybeUninit&lt;T&gt;; N]&gt;</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/mem/union.MaybeUninit.html#impl-AsRef%3C%5BMaybeUninit%3CT%3E%5D%3E-for-MaybeUninit%3C%5BT;+N%5D%3E"><code>MaybeUninit&lt;[T; N]&gt;: AsRef&lt;[MaybeUninit&lt;T&gt;]&gt;</code></a></li>
<li><a href="https://doc.rust-lang.org/beta/std/mem/union.MaybeUninit.html#impl-AsMut%3C%5BMaybeUninit%3CT%3E;+N%5D%3E-for-MaybeUninit%3C%5BT;+N%5D%3E"><code>MaybeUninit&lt;[T; N]&gt;: AsMut&lt;[MaybeUninit&lt;T&gt;; N]&gt;</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/mem/union.MaybeUninit.html#impl-AsMut%3C%5BMaybeUninit%3CT%3E%5D%3E-for-MaybeUninit%3C%5BT;+N%5D%3E"><code>MaybeUninit&lt;[T; N]&gt;: AsMut&lt;[MaybeUninit&lt;T&gt;]&gt;</code></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/blob/main/RELEASES.md">rust-toolchain's changelog</a>.</em></p>
<blockquote>
<h1>Version 1.95.0 (2026-04-16)</h1>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Stabilize <code>if let</code> guards on match arms</a></li>
<li><a href=""><code>irrefutable_let_patterns</code> lint no longer lints on let chains</a></li>
<li><a href="">Support importing path-segment keywords with renaming</a></li>
<li><a href="">Stabilize inline assembly for PowerPC and PowerPC64</a></li>
<li><a href="">const-eval: be more consistent in the behavior of padding during typed copies</a></li>
<li><a href="">Const blocks are no longer evaluated to determine if expressions involving fallible operations can implicitly be constant-promoted.</a>. Expressions whose ability to implicitly be promoted would depend on the result of a const block are no longer implicitly promoted.</li>
<li><a href="">Make operational semantics of pattern matching independent of crate and module</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Compiler</h2>
<ul>
<li><a href="">Stabilize <code>--remap-path-scope</code> for controlling the scoping of how paths get remapped in the resulting binary</a></li>
<li><a href="">Apply patches for CVE-2026-6042 and CVE-2026-40200 to vendored musl</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Promote <code>powerpc64-unknown-linux-musl</code> to Tier 2 with host tools</a></li>
<li><a href="">Promote <code>aarch64-apple-tvos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-tvos-sim</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-watchos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-watchos-sim</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-visionos</code> to Tier 2</a></li>
<li><a href="">Promote <code>aarch64-apple-visionos-sim</code> to Tier 2</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a>
for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href=""><code>thread::scope</code>: document how join interacts with TLS destructors</a></li>
<li><a href="">Speed up <code>str::contains</code> on aarch64 targets with <code>neon</code> target feature enabled by default</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>5980761</code></a> Auto merge of <a href="">#155283</a> - jieyouxu:revert-gnullvm-link-shared-stable, r=Mark-Si...</li>
<li><a href=""><code>9b3eeb3</code></a> Revert &quot;Build shared LLVM lib for windows-gnullvm&quot;</li>
<li><a href=""><code>6efb623</code></a> Auto merge of <a href="">#155210</a> - Mark-Simulacrum:stable-next, r=Mark-Simulacrum</li>
<li><a href=""><code>d899463</code></a> Switch channel to stable</li>
<li><a href=""><code>41fadcd</code></a> Patch musl's CVE-2026-6042 and CVE-2026-40200</li>
<li><a href=""><code>0c3f2ab</code></a> Cherry-pick latest release notes</li>
<li><a href=""><code>2c8c85d</code></a> Auto merge of <a href="">#154999</a> - cuviper:beta-next, r=cuviper</li>
<li><a href=""><code>b6da6b8</code></a> Optimize <code>allow_unwrap_types</code> evaluation to eliminate performance regression ...</li>
<li><a href=""><code>c79919a</code></a> Fix ICE in <code>swap_binop()</code> (<a href="">#16659</a>)</li>
<li><a href=""><code>0c9d5f0</code></a> Fix ICE in <code>match_same_arms</code> (<a href="">#16685</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/rust-lang/rust/compare/1.94.0...1.95.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rust-toolchain&package-manager=rust_toolchain&previous-version=1.94&new-version=1.95)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `befc9eb9077a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.