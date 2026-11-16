# Issue

**Title:** build(deps): bump glob from 0.3.1 to 0.3.2

## Description

Bumps [glob](https://github.com/rust-lang/glob) from 0.3.1 to 0.3.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/glob/releases">glob's releases</a>.</em></p>
<blockquote>
<h2>v0.3.2</h2>
<h2>What's Changed</h2>
<ul>
<li>Add fs::symlink_metadata to detect broken symlinks by <a href="https://github.com/kyoheiu"><code>@​kyoheiu</code></a> in <a href="">rust-lang/glob#105</a></li>
<li>Add support for windows verbatim disk paths by <a href="https://github.com/nico-abram"><code>@​nico-abram</code></a> in <a href="">rust-lang/glob#112</a></li>
<li>Respect <code>require_literal_leading_dot</code> option in <code>glob_with</code> method for path components by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#128</a></li>
<li>Harden tests for symlink by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#127</a></li>
<li>Remove &quot;extern crate&quot; directions from README by <a href="https://github.com/zmitchell"><code>@​zmitchell</code></a> in <a href="">rust-lang/glob#131</a></li>
<li>Add FIXME for tempdir by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#126</a></li>
<li>Cache information about file type by <a href="https://github.com/Kobzol"><code>@​Kobzol</code></a> in <a href="">rust-lang/glob#135</a></li>
<li>Document the behaviour of ** with files by <a href="https://github.com/Wilfred"><code>@​Wilfred</code></a> in <a href="">rust-lang/glob#138</a></li>
<li>Add dependabot by <a href="https://github.com/oriontvv"><code>@​oriontvv</code></a> in <a href="">rust-lang/glob#139</a></li>
<li>Bump actions/checkout from 3 to 4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">rust-lang/glob#140</a></li>
<li>Check only (no longer test) at the MSRV by <a href="https://github.com/tgross35"><code>@​tgross35</code></a> in <a href="">rust-lang/glob#151</a></li>
<li>Add release-plz for automated releases by <a href="https://github.com/tgross35"><code>@​tgross35</code></a> in <a href="">rust-lang/glob#150</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/kyoheiu"><code>@​kyoheiu</code></a> made their first contribution in <a href="">rust-lang/glob#105</a></li>
<li><a href="https://github.com/nico-abram"><code>@​nico-abram</code></a> made their first contribution in <a href="">rust-lang/glob#112</a></li>
<li><a href="https://github.com/zmitchell"><code>@​zmitchell</code></a> made their first contribution in <a href="">rust-lang/glob#131</a></li>
<li><a href="https://github.com/Kobzol"><code>@​Kobzol</code></a> made their first contribution in <a href="">rust-lang/glob#135</a></li>
<li><a href="https://github.com/Wilfred"><code>@​Wilfred</code></a> made their first contribution in <a href="">rust-lang/glob#138</a></li>
<li><a href="https://github.com/oriontvv"><code>@​oriontvv</code></a> made their first contribution in <a href="">rust-lang/glob#139</a></li>
<li><a href="https://github.com/dependabot"><code>@​dependabot</code></a> made their first contribution in <a href="">rust-lang/glob#140</a></li>
<li><a href="https://github.com/tgross35"><code>@​tgross35</code></a> made their first contribution in <a href="">rust-lang/glob#151</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/rust-lang/glob/compare/0.3.1...v0.3.2">https://github.com/rust-lang/glob/compare/0.3.1...v0.3.2</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rust-lang/glob/blob/master/CHANGELOG.md">glob's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/rust-lang/glob/compare/v0.3.1...v0.3.2">0.3.2</a> - 2024-12-28</h2>
<h2>What's Changed</h2>
<ul>
<li>Add fs::symlink_metadata to detect broken symlinks by <a href="https://github.com/kyoheiu"><code>@​kyoheiu</code></a> in <a href="">rust-lang/glob#105</a></li>
<li>Add support for windows verbatim disk paths by <a href="https://github.com/nico-abram"><code>@​nico-abram</code></a> in <a href="">rust-lang/glob#112</a></li>
<li>Respect <code>require_literal_leading_dot</code> option in <code>glob_with</code> method for path components by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#128</a></li>
<li>Harden tests for symlink by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#127</a></li>
<li>Remove &quot;extern crate&quot; directions from README by <a href="https://github.com/zmitchell"><code>@​zmitchell</code></a> in <a href="">rust-lang/glob#131</a></li>
<li>Add FIXME for tempdir by <a href="https://github.com/JohnTitor"><code>@​JohnTitor</code></a> in <a href="">rust-lang/glob#126</a></li>
<li>Cache information about file type by <a href="https://github.com/Kobzol"><code>@​Kobzol</code></a> in <a href="">rust-lang/glob#135</a></li>
<li>Document the behaviour of ** with files by <a href="https://github.com/Wilfred"><code>@​Wilfred</code></a> in <a href="">rust-lang/glob#138</a></li>
<li>Add dependabot by <a href="https://github.com/oriontvv"><code>@​oriontvv</code></a> in <a href="">rust-lang/glob#139</a></li>
<li>Bump actions/checkout from 3 to 4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">rust-lang/glob#140</a></li>
<li>Check only (no longer test) at the MSRV by <a href="https://github.com/tgross35"><code>@​tgross35</code></a> in <a href="">rust-lang/glob#151</a></li>
<li>Add release-plz for automated releases by <a href="https://github.com/tgross35"><code>@​tgross35</code></a> in <a href="">rust-lang/glob#150</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/kyoheiu"><code>@​kyoheiu</code></a> made their first contribution in <a href="">rust-lang/glob#105</a></li>
<li><a href="https://github.com/nico-abram"><code>@​nico-abram</code></a> made their first contribution in <a href="">rust-lang/glob#112</a></li>
<li><a href="https://github.com/zmitchell"><code>@​zmitchell</code></a> made their first contribution in <a href="">rust-lang/glob#131</a></li>
<li><a href="https://github.com/Kobzol"><code>@​Kobzol</code></a> made their first contribution in <a href="">rust-lang/glob#135</a></li>
<li><a href="https://github.com/Wilfred"><code>@​Wilfred</code></a> made their first contribution in <a href="">rust-lang/glob#138</a></li>
<li><a href="https://github.com/oriontvv"><code>@​oriontvv</code></a> made their first contribution in <a href="">rust-lang/glob#139</a></li>
<li><a href="https://github.com/dependabot"><code>@​dependabot</code></a> made their first contribution in <a href="">rust-lang/glob#140</a></li>
<li><a href="https://github.com/tgross35"><code>@​tgross35</code></a> made their first contribution in <a href="">rust-lang/glob#151</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/rust-lang/glob/compare/0.3.1...0.3.2">https://github.com/rust-lang/glob/compare/0.3.1...0.3.2</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>58d0748</code></a> chore: release v0.3.2</li>
<li><a href=""><code>55b1be0</code></a> Merge pull request <a href="">#150</a> from tgross35/release-plz</li>
<li><a href=""><code>56054d2</code></a> Add release-plz for automated releases</li>
<li><a href=""><code>b93bca1</code></a> Merge pull request <a href="">#151</a> from tgross35/fix-ci</li>
<li><a href=""><code>1dff477</code></a> Add a <code>success</code> job to CI for branch protection</li>
<li><a href=""><code>9bd1af8</code></a> Update CI runners to the latest available versions</li>
<li><a href=""><code>8c5d22c</code></a> Check only (no longer test) at the MSRV</li>
<li><a href=""><code>89ef8a3</code></a> Clean up the CI configuration file</li>
<li><a href=""><code>49ee1e9</code></a> Merge pull request <a href="">#140</a> from rust-lang/dependabot/github_actions/actions/chec...</li>
<li><a href=""><code>9c9f43f</code></a> Bump actions/checkout from 3 to 4</li>
<li>Additional commits viewable in <a href="https://github.com/rust-lang/glob/compare/0.3.1...v0.3.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=glob&package-manager=cargo&previous-version=0.3.1&new-version=0.3.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8a9f3833838c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.