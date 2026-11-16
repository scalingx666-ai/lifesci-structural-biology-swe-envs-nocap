# Issue

**Title:** build(deps): bump rust-toolchain from 1.91 to 1.94

## Description

Bumps [rust-toolchain](https://github.com/rust-lang/rust) from 1.91 to 1.94.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/releases">rust-toolchain's releases</a>.</em></p>
<blockquote>
<h2>Rust 1.94.0</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Impls and impl items inherit <code>dead_code</code> lint level of the corresponding traits and trait items</a></li>
<li><a href="">Stabilize additional 29 RISC-V target features including large portions of the RVA22U64 / RVA23U64 profiles</a></li>
<li><a href="">Add warn-by-default <code>unused_visibilities</code> lint for visibility on <code>const _</code> declarations</a></li>
<li><a href="">Update to Unicode 17</a></li>
<li><a href="">Avoid incorrect lifetime errors for closures</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Add <code>riscv64im-unknown-none-elf</code> as a tier 3 target</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a> for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Relax <code>T: Ord</code> bound for some <code>BinaryHeap&lt;T&gt;</code> methods.</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.array_windows"><code>&lt;[T]&gt;::array_windows</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.element_offset"><code>&lt;[T]&gt;::element_offset</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.get"><code>LazyCell::get</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.get_mut"><code>LazyCell::get_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.force_mut"><code>LazyCell::force_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.get"><code>LazyLock::get</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.get_mut"><code>LazyLock::get_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.force_mut"><code>LazyLock::force_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/convert/trait.TryFrom.html#impl-TryFrom%3Cchar%3E-for-usize"><code>impl TryFrom&lt;char&gt; for usize</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/iter/struct.Peekable.html#method.next_if_map"><code>std::iter::Peekable::next_if_map</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/iter/struct.Peekable.html#method.next_if_map_mut"><code>std::iter::Peekable::next_if_map_mut</code></a></li>
<li><a href="">x86 <code>avx512fp16</code> intrinsics</a> (excluding those that depend directly on the unstable <code>f16</code> type)</li>
<li><a href="">AArch64 NEON fp16 intrinsics</a> (excluding those that depend directly on the unstable <code>f16</code> type)</li>
<li><a href="https://doc.rust-lang.org/stable/std/f32/consts/constant.EULER_GAMMA.html"><code>f32::consts::EULER_GAMMA</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/f64/consts/constant.EULER_GAMMA.html"><code>f64::consts::EULER_GAMMA</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/f32/consts/constant.GOLDEN_RATIO.html"><code>f32::consts::GOLDEN_RATIO</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/f64/consts/constant.GOLDEN_RATIO.html"><code>f64::consts::GOLDEN_RATIO</code></a></li>
</ul>
<p>These previously stable APIs are now stable in const contexts:</p>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.f32.html#method.mul_add"><code>f32::mul_add</code></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/blob/main/RELEASES.md">rust-toolchain's changelog</a>.</em></p>
<blockquote>
<h1>Version 1.94.0 (2026-03-05)</h1>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Impls and impl items inherit <code>dead_code</code> lint level of the corresponding traits and trait items</a></li>
<li><a href="">Stabilize additional 29 RISC-V target features including large portions of the RVA22U64 / RVA23U64 profiles</a></li>
<li><a href="">Add warn-by-default <code>unused_visibilities</code> lint for visibility on <code>const _</code> declarations</a></li>
<li><a href="">Update to Unicode 17</a></li>
<li><a href="">Avoid incorrect lifetime errors for closures</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Add <code>riscv64im-unknown-none-elf</code> as a tier 3 target</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a>
for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Relax <code>T: Ord</code> bound for some <code>BinaryHeap&lt;T&gt;</code> methods.</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.array_windows"><code>&lt;[T]&gt;::array_windows</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.element_offset"><code>&lt;[T]&gt;::element_offset</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.get"><code>LazyCell::get</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.get_mut"><code>LazyCell::get_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/cell/struct.LazyCell.html#method.force_mut"><code>LazyCell::force_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.get"><code>LazyLock::get</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.get_mut"><code>LazyLock::get_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/struct.LazyLock.html#method.force_mut"><code>LazyLock::force_mut</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/convert/trait.TryFrom.html#impl-TryFrom%3Cchar%3E-for-usize"><code>impl TryFrom&lt;char&gt; for usize</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/iter/struct.Peekable.html#method.next_if_map"><code>std::iter::Peekable::next_if_map</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/iter/struct.Peekable.html#method.next_if_map_mut"><code>std::iter::Peekable::next_if_map_mut</code></a></li>
<li><a href="">x86 <code>avx512fp16</code> intrinsics</a>
(excluding those that depend directly on the unstable <code>f16</code> type)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4a4ef49</code></a> Auto merge of <a href="">#153313</a> - cuviper:stable-next, r=cuviper</li>
<li><a href=""><code>b8eece9</code></a> Bump to stable release</li>
<li><a href=""><code>f7370c7</code></a> Sync relnotes for 1.94.0</li>
<li><a href=""><code>ec6e988</code></a> Auto merge of <a href="">#153150</a> - cuviper:beta-next, r=cuviper</li>
<li><a href=""><code>ade4c30</code></a> Add regression test for ICE when deprecated note is not resolved on the corre...</li>
<li><a href=""><code>aed7cdd</code></a> rustdoc: Fix ICE when deprecated note is not resolved on the correct <code>DefId</code></li>
<li><a href=""><code>31a40f5</code></a> Auto merge of <a href="">#152875</a> - cuviper:beta-next, r=cuviper</li>
<li><a href=""><code>675afc4</code></a> resolve: Disable an assert that no longer holds</li>
<li><a href=""><code>fe9b522</code></a> ICE to delayed bug</li>
<li><a href=""><code>2e724d4</code></a> add regression test</li>
<li>Additional commits viewable in <a href="https://github.com/rust-lang/rust/compare/1.91.0...1.94.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rust-toolchain&package-manager=rust_toolchain&previous-version=1.91&new-version=1.94)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `507cac9e0b58`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.