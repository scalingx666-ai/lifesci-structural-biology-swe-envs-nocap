# Issue

**Title:** build(deps): bump chrono from 0.4.41 to 0.4.42

## Description

Bumps [chrono](https://github.com/chronotope/chrono) from 0.4.41 to 0.4.42.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/chronotope/chrono/releases">chrono's releases</a>.</em></p>
<blockquote>
<h2>0.4.42</h2>
<h2>What's Changed</h2>
<ul>
<li>Add fuzzer for DateTime::parse_from_str by <a href="https://github.com/tyler92"><code>@​tyler92</code></a> in <a href="">chronotope/chrono#1700</a></li>
<li>Fix wrong amount of micro/milliseconds by <a href="https://github.com/nmlt"><code>@​nmlt</code></a> in <a href="">chronotope/chrono#1703</a></li>
<li>Add warning about MappedLocalTime and wasm by <a href="https://github.com/lutzky"><code>@​lutzky</code></a> in <a href="">chronotope/chrono#1702</a></li>
<li>Fix incorrect parsing of fixed-length second fractions by <a href="https://github.com/chris-leach"><code>@​chris-leach</code></a> in <a href="">chronotope/chrono#1705</a></li>
<li>Fix cfgs for <code>wasm32-linux</code> support by <a href="https://github.com/arjunr2"><code>@​arjunr2</code></a> in <a href="">chronotope/chrono#1707</a></li>
<li>Fix OpenHarmony's <code>tzdata</code> parsing by <a href="https://github.com/ldm0"><code>@​ldm0</code></a> in <a href="">chronotope/chrono#1679</a></li>
<li>Convert NaiveDate to/from days since unix epoch by <a href="https://github.com/findepi"><code>@​findepi</code></a> in <a href="">chronotope/chrono#1715</a></li>
<li>Add <code>?Sized</code> bound to related methods of <code>DelayedFormat::write_to</code> by <a href="https://github.com/Huliiiiii"><code>@​Huliiiiii</code></a> in <a href="">chronotope/chrono#1721</a></li>
<li>Add <code>from_timestamp_secs</code> method to <code>DateTime</code> by <a href="https://github.com/jasonaowen"><code>@​jasonaowen</code></a> in <a href="">chronotope/chrono#1719</a></li>
<li>Migrate to core::error::Error by <a href="https://github.com/benbrittain"><code>@​benbrittain</code></a> in <a href="">chronotope/chrono#1704</a></li>
<li>Upgrade to windows-bindgen 0.63 by <a href="https://github.com/djc"><code>@​djc</code></a> in <a href="">chronotope/chrono#1730</a></li>
<li>strftime: simplify error handling by <a href="https://github.com/djc"><code>@​djc</code></a> in <a href="">chronotope/chrono#1731</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f3fd15f</code></a> Bump version to 0.4.42</li>
<li><a href=""><code>5cf5603</code></a> strftime: add regression test case</li>
<li><a href=""><code>a623170</code></a> strftime: simplify error handling</li>
<li><a href=""><code>36fbfb1</code></a> strftime: move specifier handling out of match to reduce rightward drift</li>
<li><a href=""><code>7f413c3</code></a> strftime: yield None early</li>
<li><a href=""><code>9d5dfe1</code></a> strftime: outline constants</li>
<li><a href=""><code>e5f6be7</code></a> strftime: move error() method below caller</li>
<li><a href=""><code>d516c27</code></a> strftime: merge impl blocks</li>
<li><a href=""><code>0ee2172</code></a> strftime: re-order items to keep impls together</li>
<li><a href=""><code>757a8b0</code></a> Upgrade to windows-bindgen 0.63</li>
<li>Additional commits viewable in <a href="https://github.com/chronotope/chrono/compare/v0.4.41...v0.4.42">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=chrono&package-manager=cargo&previous-version=0.4.41&new-version=0.4.42)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c60e2e7e0b5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.