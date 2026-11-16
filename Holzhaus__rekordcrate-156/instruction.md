# Issue

**Title:** build(deps): bump binrw from 0.14.1 to 0.15.0

## Description

Bumps [binrw](https://github.com/jam1garner/binrw) from 0.14.1 to 0.15.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jam1garner/binrw/releases">binrw's releases</a>.</em></p>
<blockquote>
<h2>Version 0.15.0</h2>
<h1>Breaking changes</h1>
<ul>
<li>The generic parameter lists for <code>binrw::helpers</code> functions have been reordered to put most-frequently-used parameters first.</li>
<li>Lifetime parameters have been added to several <code>binrw::helpers</code> functions to support borrowed arguments.</li>
<li>The MSRV has been increased to 1.70.</li>
<li>Parsing a unit enum with <code>magic</code> will now return an <code>Io(UnexpectedEof)</code> error when all attempts to read magic result in an <code>UnexpectedEof</code>. Previously, this would return <code>NoVariantMatch</code>. (<a href="">#324</a>, <a href="">#325</a>. Thanks, <a href="https://github.com/plaflamme"><code>@​plaflamme</code></a>!)</li>
</ul>
<h1>Enhancements</h1>
<ul>
<li><code>PosValue</code> now includes implementations for <code>Default</code> and <code>BinWrite</code>. The <code>BinWrite</code> implementation simply treats <code>PosValue</code> as a wrapper and writes the stored value in place; the <code>pos</code> field is ignored. Use the <code>seek_before</code> and (optionally) <code>restore_position</code> directives if you want to write a <code>PosValue</code> value to a different position in the output stream. (<a href="">#270</a>, <a href="">#273</a>. Thanks, <a href="https://github.com/amirbou"><code>@​amirbou</code></a>!)</li>
<li>binrw now uses syn 2 internally, which should reduce the build time for most users of binrw when used with other dependencies that have also updated to syn 2. (<a href="">#285</a>, <a href="">#299</a>. Thanks, <a href="https://github.com/Urist-McGit"><code>@​Urist-McGit</code></a>!)</li>
<li>The amount of code generated has been reduced, improving compilation times. (<a href="">#319</a>. Thanks, <a href="https://github.com/ScanMountGoat"><code>@​ScanMountGoat</code></a>!)</li>
<li>Various small documentation improvements. (Thanks, <a href="https://github.com/marxin"><code>@​marxin</code></a>!)</li>
<li><code>BinWrite::write_ne</code> and <code>BinWrite::write_ne_args</code> convenience functions have been added to match the same functions in the <code>BinRead</code> API.</li>
<li>The owo-colors dependency has been updated to version 4.</li>
</ul>
<h1>Bug fixes</h1>
<ul>
<li>Using <code>SeekFrom::End</code> with <code>TakeSeek</code> now correctly seeks relative to the end of the stream if the stream is shorter than the limit. (<a href="">#291</a>)</li>
<li>Using <code>binrw::helpers::count_with</code> to return a <code>Vec&lt;{integer}&gt;</code> using a custom function will no longer ignore the custom function. (<a href="">#318</a>. Thanks, <a href="https://github.com/kitlith"><code>@​kitlith</code></a>!)</li>
<li>It is now possible to pass borrowed values when using <code>binrw::helpers</code> functions.</li>
<li>The <code>args</code> directive can now be used when closures are passed to <code>parse_with</code> or <code>write_with</code>.</li>
<li>All forwarding calls in the <code>BinReadExt</code> and <code>BinWriteExt</code> traits are now appropriately annotated with <code>#[inline]</code>.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>841f2bd</code></a> Updating metadata for 0.15.0</li>
<li><a href=""><code>cd12b35</code></a> Update owo-colors dependency to latest release</li>
<li><a href=""><code>6ea06d4</code></a> Update modular-bitfield dependency to latest release</li>
<li><a href=""><code>3d031c0</code></a> Add missing inline hints to forwarding calls</li>
<li><a href=""><code>1940cd5</code></a> Add native-endian methods to BinWrite API</li>
<li><a href=""><code>741c3ee</code></a> Fix new clippy lints</li>
<li><a href=""><code>d26a25b</code></a> Return EOF when all unit enum magic errors are EOF</li>
<li><a href=""><code>bd43467</code></a> Use better offset &amp; bitfield resource links in documentation</li>
<li><a href=""><code>c775a04</code></a> Document fallback handling with <code>magic</code> directive</li>
<li><a href=""><code>376ed95</code></a> Try to clarify lazy-loading file pointer example</li>
<li>Additional commits viewable in <a href="https://github.com/jam1garner/binrw/compare/v0.14.1...v0.15.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=binrw&package-manager=cargo&previous-version=0.14.1&new-version=0.15.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `519d0085918d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.