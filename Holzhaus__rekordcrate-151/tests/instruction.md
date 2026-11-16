# Issue

**Title:** build(deps): bump quick-xml from 0.37.2 to 0.37.5

## Description

Bumps [quick-xml](https://github.com/tafia/quick-xml) from 0.37.2 to 0.37.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/releases">quick-xml's releases</a>.</em></p>
<blockquote>
<h2>v0.37.5 - BytesCData::decode()</h2>
<h2>What's Changed</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#857</a>: Add <code>BytesCData::decode()</code>.</li>
</ul>
<p><a href="">#857</a>: <a href="">tafia/quick-xml#857</a></p>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/mematthias"><code>@​mematthias</code></a> made their first contribution in <a href="">tafia/quick-xml#857</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.37.4...v0.37.5">https://github.com/tafia/quick-xml/compare/v0.37.4...v0.37.5</a></p>
<h2>v0.37.4 - Derive more traits for readers</h2>
<h2>What's Changed</h2>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#852</a>: Add <code>Debug</code> impl for <code>NsReader</code> and <code>Reader</code> and <code>Clone</code> impl for <code>NsReader</code></li>
</ul>
<p><a href="">#852</a>: <a href="">tafia/quick-xml#852</a></p>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/lukasfri"><code>@​lukasfri</code></a> made their first contribution in <a href="">tafia/quick-xml#852</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.37.3...v0.37.4">https://github.com/tafia/quick-xml/compare/v0.37.3...v0.37.4</a></p>
<h2>v0.37.3 - support for <code>xsi:nil</code> in Deserializer</h2>
<h2>What's Changed</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#850</a>: Add <code>Attribute::as_bool()</code> method to get an attribute value as a boolean.</li>
<li><a href="">#850</a>: Add <code>Attributes::has_nil()</code> method to check if attributes has <code>xsi:nil</code> attribute set to <code>true</code>.</li>
<li><a href="">#497</a>: Handle <code>xsi:nil</code> attribute in serde Deserializer to better process optional fields.</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tafia/quick-xml/compare/v0.37.2...v0.37.3">https://github.com/tafia/quick-xml/compare/v0.37.2...v0.37.3</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tafia/quick-xml/blob/master/Changelog.md">quick-xml's changelog</a>.</em></p>
<blockquote>
<h2>0.37.5 -- 2025-04-27</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#857</a>: Add <code>BytesCData::decode()</code>.</li>
</ul>
<p><a href="">#857</a>: <a href="">tafia/quick-xml#857</a></p>
<h2>0.37.4 -- 2025-04-01</h2>
<h3>Misc Changes</h3>
<ul>
<li><a href="">#852</a>: Add <code>Debug</code> impl for <code>NsReader</code> and <code>Reader</code> and <code>Clone</code> impl for <code>NsReader</code></li>
</ul>
<p><a href="">#852</a>: <a href="">tafia/quick-xml#852</a></p>
<h2>0.37.3 -- 2025-03-25</h2>
<h3>New Features</h3>
<ul>
<li><a href="">#850</a>: Add <code>Attribute::as_bool()</code> method to get an attribute value as a boolean.</li>
<li><a href="">#850</a>: Add <code>Attributes::has_nil()</code> method to check if attributes has <code>xsi:nil</code> attribute set to <code>true</code>.</li>
<li><a href="">#497</a>: Handle <code>xsi:nil</code> attribute in serde Deserializer to better process optional fields.</li>
</ul>
<p><a href="">#497</a>: <a href="">tafia/quick-xml#497</a>
<a href="">#850</a>: <a href="">tafia/quick-xml#850</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a018365</code></a> Release 0.37.5</li>
<li><a href=""><code>a7cb878</code></a> Merge pull request <a href="">#857</a> from mematthias/master</li>
<li><a href=""><code>4acc194</code></a> Make BytesCData decode method pub</li>
<li><a href=""><code>a81bac7</code></a> Release 0.37.4</li>
<li><a href=""><code>cbcf835</code></a> Add some standard derives for Debug and Clone on Reader and NsReader.</li>
<li><a href=""><code>2cedfe1</code></a> Release 0.37.3</li>
<li><a href=""><code>44644b3</code></a> Merge pull request <a href="">#850</a> from Mingun/fix/honor_xsi_nil</li>
<li><a href=""><code>3c4de88</code></a> Migrate to actions/upload-artifact@v4 in fuzzer sub-project</li>
<li><a href=""><code>6176c33</code></a> Properly use <code>xsi:nil</code> to deserialize null values via serde</li>
<li><a href=""><code>10b37f7</code></a> Add tests for xsi:nil handling</li>
<li>Additional commits viewable in <a href="https://github.com/tafia/quick-xml/compare/v0.37.2...v0.37.5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=quick-xml&package-manager=cargo&previous-version=0.37.2&new-version=0.37.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5bc74c38a8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.