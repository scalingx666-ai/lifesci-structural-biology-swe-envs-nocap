# Issue

**Title:** build(deps): bump rust-toolchain from 1.96 to 1.98

## Description

Bumps [rust-toolchain](https://github.com/rust-lang/rust) from 1.96 to 1.98.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/releases">rust-toolchain's releases</a>.</em></p>
<blockquote>
<h2>Rust 1.98.0</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Allow shortening lifetime of <code>&amp;mut</code> when unsize-coercing, even in an invariant position.</a> For example, you can now coerce a <code>Cell&lt;&amp;'long mut i32&gt;</code> to a <code>Cell&lt;&amp;'short mut dyn Send&gt;</code>. Such shortenings were already previously allowed when coercing a <code>&amp;mut</code> to a <code>&amp;</code>, or coercing a <code>&amp;</code> to a <code>&amp;</code>.</li>
<li><a href="">Add deny-by-default <code>invalid_runtime_symbol_definitions</code> lint and warn-by-default <code>suspicious_runtime_symbol_definitions</code> lint</a>
<ul>
<li>The lints currently specifically targets <code>core</code> runtime symbols like <code>memcmp</code>, <code>memset</code>, <code>strlen</code>, ... and is planned to be expanded in the next few releases.</li>
</ul>
</li>
<li><a href="">Add warn-by-default <code>c_void_returns</code> lint to check <code>core::ffi::c_void</code> as a return type</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Add <code>powerpc64-unknown-linux-gnuelfv2</code> as Tier 3</a></li>
<li><a href="">Add <code>aarch64-unknown-linux-pauthtest</code> as Tier 3 target</a></li>
<li><a href="">Promote <code>thumbv7a-none-eabi</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7a-none-eabihf</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7r-none-eabi</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7r-none-eabihf</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv8r-none-eabihf</code> to Tier 2</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a> for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Change <code>Location&lt;'_&gt;</code> lifetime to <code>'static</code> in <code>Panic[Hook]Info</code></a></li>
<li><a href="">Document panic in <code>RangeInclusive::from(legacy::RangeInclusive)</code></a></li>
<li><a href="">Document that <code>ManuallyDrop</code>'s <code>Box</code> interaction has been fixed</a></li>
<li><a href="">Stabilize LoongArch CRC Intrinsics</a></li>
<li><a href="">The <code>derive</code> macro is available at <code>{core,std}::derive</code>.</a> This was previously <a href="">unintentionally stabilized in 1.96</a>, but is now <a href="">explicitly accepted</a> as a stabilized API.
<ul>
<li>Please note that the MSRV for <code>{core,std}::derive</code> will be 1.96, and not 1.98.</li>
</ul>
</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.str.html#method.substr_range"><code>str::substr_range</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.subslice_range"><code>[T]::subslice_range</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/fmt/struct.NumBuffer.html"><code>core::fmt::NumBuffer</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.usize.html#method.format_into"><code>&lt;{integer}&gt;::format_into</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/process/struct.CommandArgs.html#impl-Send-for-CommandArgs%3C&#x27;a%3E"><code>Send/Sync for std::process::CommandArgs</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.f32.html#method.algebraic_add"><code>{fN}::algebraic_add</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.f32.html#method.algebraic_sub"><code>{fN}::algebraic_sub</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.f32.html#method.algebraic_mul"><code>{fN}::algebraic_mul</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.f32.html#method.algebraic_div"><code>{fN}::algebraic_div</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/primitive.f32.html#method.algebraic_rem"><code>{fN}::algebraic_rem</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/core/num/struct.NonZero.html#method.from_str_radix-4"><code>NonZero&lt;{integer}&gt;::from_str_radix</code></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/blob/main/RELEASES.md">rust-toolchain's changelog</a>.</em></p>
<blockquote>
<h1>Version 1.98.0 (2026-08-20)</h1>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Allow shortening lifetime of <code>&amp;mut</code> when unsize-coercing, even in an invariant position.</a> For example, you can now coerce a <code>Cell&lt;&amp;'long mut i32&gt;</code> to a <code>Cell&lt;&amp;'short mut dyn Send&gt;</code>. Such shortenings were already previously allowed when coercing a <code>&amp;mut</code> to a <code>&amp;</code>, or coercing a <code>&amp;</code> to a <code>&amp;</code>.</li>
<li><a href="">Add deny-by-default <code>invalid_runtime_symbol_definitions</code> lint and warn-by-default <code>suspicious_runtime_symbol_definitions</code> lint</a>
<ul>
<li>The lints currently specifically targets <code>core</code> runtime symbols like <code>memcmp</code>, <code>memset</code>, <code>strlen</code>, ... and is planned to be expanded in the next few releases.</li>
</ul>
</li>
<li><a href="">Add warn-by-default <code>c_void_returns</code> lint to check <code>core::ffi::c_void</code> as a return type</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Add <code>powerpc64-unknown-linux-gnuelfv2</code> as Tier 3</a></li>
<li><a href="">Add <code>aarch64-unknown-linux-pauthtest</code> as Tier 3 target</a></li>
<li><a href="">Promote <code>thumbv7a-none-eabi</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7a-none-eabihf</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7r-none-eabi</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv7r-none-eabihf</code> to Tier 2</a></li>
<li><a href="">Promote <code>thumbv8r-none-eabihf</code> to Tier 2</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a>
for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Change <code>Location&lt;'_&gt;</code> lifetime to <code>'static</code> in <code>Panic[Hook]Info</code></a></li>
<li><a href="">Document panic in <code>RangeInclusive::from(legacy::RangeInclusive)</code></a></li>
<li><a href="">Document that <code>ManuallyDrop</code>'s <code>Box</code> interaction has been fixed</a></li>
<li><a href="">Stabilize LoongArch CRC Intrinsics</a></li>
<li><a href="">The <code>derive</code> macro is available at <code>{core,std}::derive</code>.</a> This was previously <a href="">unintentionally stabilized in 1.96</a>, but is now <a href="">explicitly accepted</a> as a stabilized API.
<ul>
<li>Please note that the MSRV for <code>{core,std}::derive</code> will be 1.96, and not 1.98.</li>
</ul>
</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.str.html#method.substr_range"><code>str::substr_range</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/primitive.slice.html#method.subslice_range"><code>[T]::subslice_range</code></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>88d9e12</code></a> Auto merge of <a href="">#161313</a> - cuviper:stable-next, r=cuviper</li>
<li><a href=""><code>8f6f43c</code></a> update relnotes</li>
<li><a href=""><code>c6d0dd0</code></a> Bump stable channel</li>
<li><a href=""><code>824ef7e</code></a> Revert &quot;riscv: promote d, e, and f target_features to CfgStableToggleUnstable&quot;</li>
<li><a href=""><code>04eb0d7</code></a> Auto merge of <a href="">#161039</a> - flip1995:clippy-beta-backport, r=Mark-Simulacrum</li>
<li><a href=""><code>6cc2858</code></a> Fix ICE when resolving local in <code>unnecessary_unwrap_unchecked</code> (<a href="">#17353</a>)</li>
<li><a href=""><code>d440739</code></a> <code>unnecessary_unwrap_unchecked</code>: don't trigger inside the <code>_unchecked</code> fn (<a href="">#17</a>...</li>
<li><a href=""><code>e1114a1</code></a> Auto merge of <a href="">#160714</a> - cuviper:beta-next, r=cuviper</li>
<li><a href=""><code>ebcacaa</code></a> [beta-1.98] Update cargo submodule</li>
<li><a href=""><code>33c0be1</code></a> Update attr name for <code>#[unroll]</code> in Unstable Book</li>
<li>Additional commits viewable in <a href="https://github.com/rust-lang/rust/compare/1.96.0...1.98.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rust-toolchain&package-manager=rust_toolchain&previous-version=1.96&new-version=1.98)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fbd80118b619`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.