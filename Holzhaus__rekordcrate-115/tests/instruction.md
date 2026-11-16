# Issue

**Title:** build(deps): bump thiserror from 1.0.69 to 2.0.3

## Description

Bumps [thiserror](https://github.com/dtolnay/thiserror) from 1.0.69 to 2.0.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/dtolnay/thiserror/releases">thiserror's releases</a>.</em></p>
<blockquote>
<h2>2.0.3</h2>
<ul>
<li>Support the same Path field being repeated in both Debug and Display representation in error message (<a href="">#383</a>)</li>
<li>Improve error message when a format trait used in error message is not implemented by some field (<a href="">#384</a>)</li>
</ul>
<h2>2.0.2</h2>
<ul>
<li>Fix hang on invalid input inside #[error(...)] attribute (<a href="">#382</a>)</li>
</ul>
<h2>2.0.1</h2>
<ul>
<li>Support errors that contain a dynamically sized final field (<a href="">#375</a>)</li>
<li>Improve inference of trait bounds for fields that are interpolated multiple times in an error message (<a href="">#377</a>)</li>
</ul>
<h2>2.0.0</h2>
<h2>Breaking changes</h2>
<ul>
<li>
<p>Referencing keyword-named fields by a raw identifier like <code>{r#type}</code> inside a format string is no longer accepted; simply use the unraw name like <code>{type}</code> (<a href="">#347</a>)</p>
<p>This aligns thiserror with the standard library's formatting macros, which gained support for implicit argument capture later than the release of this feature in thiserror 1.x.</p>
<pre lang="rust"><code>#[derive(Error, Debug)]
#[error(&quot;... {type} ...&quot;)]  // Before: {r#type}
pub struct Error {
    pub r#type: Type,
}
</code></pre>
</li>
<li>
<p>Trait bounds are no longer inferred on fields whose value is shadowed by an explicit named argument in a format message (<a href="">#345</a>)</p>
<pre lang="rust"><code>// Before: impl&lt;T: Octal&gt; Display for Error&lt;T&gt;
// After: impl&lt;T&gt; Display for Error&lt;T&gt;
#[derive(Error, Debug)]
#[error(&quot;{thing:o}&quot;, thing = &quot;...&quot;)]
pub struct Error&lt;T&gt; {
    thing: T,
}
</code></pre>
</li>
<li>
<p>Tuple structs and tuple variants can no longer use numerical <code>{0}</code> <code>{1}</code> access at the same time as supplying extra positional arguments for a format message, as this makes it ambiguous whether the number refers to a tuple field vs a different positional arg (<a href="">#354</a>)</p>
<pre lang="rust"><code>#[derive(Error, Debug)]
#[error(&quot;ambiguous: {0} {}&quot;, $N)]
//                  ^^^ Not allowed, use #[error(&quot;... {0} {n}&quot;, n = $N)]
pub struct TupleError(i32);
</code></pre>
</li>
<li>
<p>Code containing invocations of thiserror's <code>derive(Error)</code> must now have a direct dependency on the <code>thiserror</code> crate regardless of the error data structure's contents (<a href="">#368</a>, <a href="">#369</a>, <a href="">#370</a>, <a href="">#372</a>)</p>
</li>
</ul>
<h2>Features</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>15fd26e</code></a> Release 2.0.3</li>
<li><a href=""><code>7046023</code></a> Simplify how has_bonus_display is accumulated</li>
<li><a href=""><code>9cc1d0b</code></a> Merge pull request <a href="">#384</a> from dtolnay/nowrap</li>
<li><a href=""><code>1d040f3</code></a> Use Var wrapper only for Pointer formatting</li>
<li><a href=""><code>6a6132d</code></a> Extend no-display ui test to cover another fmt trait</li>
<li><a href=""><code>a061beb</code></a> Merge pull request <a href="">#383</a> from dtolnay/both</li>
<li><a href=""><code>6388293</code></a> Support Display and Debug of same path in error message</li>
<li><a href=""><code>dc0359e</code></a> Defer binding_value construction</li>
<li><a href=""><code>520343e</code></a> Add test of Debug and Display of paths</li>
<li><a href=""><code>49be39d</code></a> Release 2.0.2</li>
<li>Additional commits viewable in <a href="https://github.com/dtolnay/thiserror/compare/1.0.69...2.0.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=thiserror&package-manager=cargo&previous-version=1.0.69&new-version=2.0.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f72b6bd630be`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.