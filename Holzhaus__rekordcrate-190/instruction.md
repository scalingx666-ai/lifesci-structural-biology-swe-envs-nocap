# Issue

**Title:** build(deps): bump rust-toolchain from 1.90 to 1.91

## Description

Bumps [rust-toolchain](https://github.com/rust-lang/rust) from 1.90 to 1.91.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/releases">rust-toolchain's releases</a>.</em></p>
<blockquote>
<h2>Rust 1.91.0</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Lower pattern bindings in the order they're written and base drop order on primary bindings' order</a></li>
<li><a href="">Stabilize declaration of C-style variadic functions for <code>sysv64</code>, <code>win64</code>, <code>efiapi</code>, and <code>aapcs</code> ABIs</a>. This brings these ABIs in line with the C ABI: variadic functions can be declared in extern blocks but not defined.</li>
<li><a href="">Add <code>dangling_pointers_from_locals</code> lint to warn against dangling pointers from local variables</a></li>
<li><a href="">Upgrade <code>semicolon_in_expressions_from_macros</code> from warn to deny</a></li>
<li><a href="">Stabilize LoongArch32 inline assembly</a></li>
<li><a href="">Add warn-by-default <code>integer_to_ptr_transmutes</code> lint against integer-to-pointer transmutes</a></li>
<li><a href="">Stabilize <code>sse4a</code> and <code>tbm</code> target features</a></li>
<li><a href="">Add <code>target_env = &quot;macabi&quot;</code> and <code>target_env = &quot;sim&quot;</code> cfgs</a> as replacements for the <code>target_abi</code> cfgs with the same values.</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Compiler</h2>
<ul>
<li><a href="">Don't warn on never-to-any <code>as</code> casts as unreachable</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Promote <code>aarch64-pc-windows-gnullvm</code> and <code>x86_64-pc-windows-gnullvm</code> to Tier 2 with host tools.</a> Note: llvm-tools and MSI installers are missing but will be added in future releases.</li>
<li><a href="">Promote <code>aarch64-pc-windows-msvc</code> to Tier 1</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a> for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Print thread ID in panic message</a></li>
<li><a href="">Fix overly restrictive lifetime in <code>core::panic::Location::file</code> return type</a></li>
<li><a href="">Guarantee parameter order for <code>_by()</code> variants of <code>min</code> / <code>max</code>/ <code>minmax</code> in <code>std::cmp</code></a></li>
<li><a href="">Document assumptions about <code>Clone</code> and <code>Eq</code> traits</a></li>
<li><a href=""><code>std::thread</code>: Return error if setting thread stack size fails</a> This used to panic within the standard library.</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Stabilized APIs</h2>
<ul>
<li><a href="https://doc.rust-lang.org/stable/std/path/struct.Path.html#method.file_prefix"><code>Path::file_prefix</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_ptr_add"><code>AtomicPtr::fetch_ptr_add</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_ptr_sub"><code>AtomicPtr::fetch_ptr_sub</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_byte_add"><code>AtomicPtr::fetch_byte_add</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_byte_sub"><code>AtomicPtr::fetch_byte_sub</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_or"><code>AtomicPtr::fetch_or</code></a></li>
<li><a href="https://doc.rust-lang.org/stable/std/sync/atomic/struct.AtomicPtr.html#method.fetch_and"><code>AtomicPtr::fetch_and</code></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/rust/blob/master/RELEASES.md">rust-toolchain's changelog</a>.</em></p>
<blockquote>
<h1>Version 1.91.0 (2025-10-30)</h1>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Language</h2>
<ul>
<li><a href="">Lower pattern bindings in the order they're written and base drop order on primary bindings' order</a></li>
<li><a href="">Stabilize declaration of C-style variadic functions for <code>sysv64</code>, <code>win64</code>, <code>efiapi</code>, and <code>aapcs</code> ABIs</a>.
This brings these ABIs in line with the C ABI: variadic functions can be declared in extern blocks but not defined.</li>
<li><a href="">Add <code>dangling_pointers_from_locals</code> lint to warn against dangling pointers from local variables</a></li>
<li><a href="">Upgrade <code>semicolon_in_expressions_from_macros</code> from warn to deny</a></li>
<li><a href="">Stabilize LoongArch32 inline assembly</a></li>
<li><a href="">Add warn-by-default <code>integer_to_ptr_transmutes</code> lint against integer-to-pointer transmutes</a></li>
<li><a href="">Stabilize <code>sse4a</code> and <code>tbm</code> target features</a></li>
<li><a href="">Add <code>target_env = &quot;macabi&quot;</code> and <code>target_env = &quot;sim&quot;</code> cfgs</a> as replacements for the <code>target_abi</code> cfgs with the same values.</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Compiler</h2>
<ul>
<li><a href="">Don't warn on never-to-any <code>as</code> casts as unreachable</a></li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Platform Support</h2>
<ul>
<li><a href="">Promote <code>aarch64-pc-windows-gnullvm</code> and <code>x86_64-pc-windows-gnullvm</code> to Tier 2 with host tools.</a>
Note: llvm-tools and MSI installers are missing but will be added in future releases.</li>
<li><a href="">Promote <code>aarch64-pc-windows-msvc</code> to Tier 1</a></li>
</ul>
<p>Refer to Rust's <a href="https://doc.rust-lang.org/rustc/platform-support.html">platform support page</a>
for more information on Rust's tiered platform support.</p>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h2>Libraries</h2>
<ul>
<li><a href="">Print thread ID in panic message</a></li>
<li><a href="">Fix overly restrictive lifetime in <code>core::panic::Location::file</code> return type</a></li>
<li><a href="">Guarantee parameter order for <code>_by()</code> variants of <code>min</code> / <code>max</code>/ <code>minmax</code> in <code>std::cmp</code></a></li>
<li><a href="">Document assumptions about <code>Clone</code> and <code>Eq</code> traits</a></li>
<li><a href=""><code>std::thread</code>: Return error if setting thread stack size fails</a>
This used to panic within the standard library.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f8297e3</code></a> Auto merge of <a href="">#148216</a> - cuviper:stable-next, r=BoxyUwU,jackh726</li>
<li><a href=""><code>faf3e0b</code></a> Further revert <code>Deref for Cow</code> to its 1.90.0 state</li>
<li><a href=""><code>40c4f6d</code></a> Auto merge of <a href="">#148179</a> - cuviper:stable-next, r=cuviper</li>
<li><a href=""><code>be999ad</code></a> 1.91.0 stable release</li>
<li><a href=""><code>e4f5031</code></a> fix(len_zero): don't eagerly call <code>GenericArgs::type_at</code> (<a href="">#15660</a>)</li>
<li><a href=""><code>7ce3022</code></a> rustdoc-search: stringdex 0.0.2</li>
<li><a href=""><code>716b84e</code></a> rustdoc-search: stringdex update with more packing</li>
<li><a href=""><code>b0dd64f</code></a> rustdoc-search: add descriptive comment to space-saving hack</li>
<li><a href=""><code>8127760</code></a> rustdoc-search: use the same ID for entry and path to same item</li>
<li><a href=""><code>b77c3b1</code></a> rustdoc-search: delay loading type name IDs until type search</li>
<li>Additional commits viewable in <a href="https://github.com/rust-lang/rust/compare/1.90.0...1.91.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rust-toolchain&package-manager=rust_toolchain&previous-version=1.90&new-version=1.91)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2d8fb2e19a48`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.