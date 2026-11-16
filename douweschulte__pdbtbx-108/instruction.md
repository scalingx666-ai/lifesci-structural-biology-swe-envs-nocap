# Issue

**Title:** Update indexmap requirement from 1.8 to 2.0

## Description

Updates the requirements on [indexmap](https://github.com/bluss/indexmap) to permit the latest version.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/bluss/indexmap/blob/master/RELEASES.md">indexmap's changelog</a>.</em></p>
<blockquote>
<ul>
<li>
<p>2.0.0</p>
<ul>
<li>
<p><strong>MSRV</strong>: Rust 1.64.0 or later is now required.</p>
</li>
<li>
<p>The <code>&quot;std&quot;</code> feature is no longer auto-detected. It is included in the
default feature set, or else can be enabled like any other Cargo feature.</p>
</li>
<li>
<p>The <code>&quot;serde-1&quot;</code> feature has been removed, leaving just the optional
<code>&quot;serde&quot;</code> dependency to be enabled like a feature itself.</p>
</li>
<li>
<p><code>IndexMap::get_index_mut</code> now returns <code>Option&lt;(&amp;K, &amp;mut V)&gt;</code>, changing
the key part from <code>&amp;mut K</code> to <code>&amp;K</code>. There is also a new alternative
<code>MutableKeys::get_index_mut2</code> to access the former behavior.</p>
</li>
<li>
<p>The new <code>map::Slice&lt;K, V&gt;</code> and <code>set::Slice&lt;T&gt;</code> offer a linear view of maps
and sets, behaving a lot like normal <code>[(K, V)]</code> and <code>[T]</code> slices. Notably,
comparison traits like <code>Eq</code> only consider items in order, rather than hash
lookups, and slices even implement <code>Hash</code>.</p>
</li>
<li>
<p><code>IndexMap</code> and <code>IndexSet</code> now have <code>sort_by_cached_key</code> and
<code>par_sort_by_cached_key</code> methods which perform stable sorts in place
using a key extraction function.</p>
</li>
<li>
<p><code>IndexMap</code> and <code>IndexSet</code> now have <code>reserve_exact</code>, <code>try_reserve</code>, and
<code>try_reserve_exact</code> methods that correspond to the same methods on <code>Vec</code>.
However, exactness only applies to the direct capacity for items, while the
raw hash table still follows its own rules for capacity and load factor.</p>
</li>
<li>
<p>The <code>Equivalent</code> trait is now re-exported from the <code>equivalent</code> crate,
intended as a common base to allow types to work with multiple map types.</p>
</li>
<li>
<p>The <code>hashbrown</code> dependency has been updated to version 0.14.</p>
</li>
<li>
<p>The <code>serde_seq</code> module has been moved from the crate root to below the
<code>map</code> module.</p>
</li>
</ul>
</li>
<li>
<p>1.9.3</p>
<ul>
<li>Bump the <code>rustc-rayon</code> dependency, for compiler use only.</li>
</ul>
</li>
<li>
<p>1.9.2</p>
<ul>
<li><code>IndexMap</code> and <code>IndexSet</code> both implement <code>arbitrary::Arbitrary&lt;'_&gt;</code> and
<code>quickcheck::Arbitrary</code> if those optional dependency features are enabled.</li>
</ul>
</li>
<li>
<p>1.9.1</p>
<ul>
<li>The MSRV now allows Rust 1.56.0 as well. However, currently <code>hashbrown</code>
0.12.1 requires 1.56.1, so users on 1.56.0 should downgrade that to 0.12.0
until there is a later published version relaxing its requirement.</li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>8e47be8</code></a> Merge pull request <a href="">#267</a> from cuviper/release-2.0.0</li>
<li><a href=""><code>ad694fb</code></a> Release 2.0.0</li>
<li><a href=""><code>b5b2814</code></a> Merge pull request <a href="">#266</a> from cuviper/doc-capacity</li>
<li><a href=""><code>d3ea289</code></a> Document the lower-bound semantics of capacity</li>
<li><a href=""><code>74e14da</code></a> Merge pull request <a href="">#264</a> from cuviper/equivalent</li>
<li><a href=""><code>677c605</code></a> Add a relnote for Equivalent</li>
<li><a href=""><code>6d83bc1</code></a> pub use equivalent::Equivalent;</li>
<li><a href=""><code>bb48357</code></a> Merge pull request <a href="">#263</a> from cuviper/insert_in_slot</li>
<li><a href=""><code>c37dae6</code></a> Use hashbrown's new single-lookup insertion</li>
<li><a href=""><code>ee71507</code></a> Merge pull request <a href="">#262</a> from daxpedda/hashbrown-v0.14</li>
<li>Additional commits viewable in <a href="https://github.com/bluss/indexmap/compare/1.8.0...2.0.0">compare view</a></li>
</ul>
</details>
<br />

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `793da9ca0a55`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.