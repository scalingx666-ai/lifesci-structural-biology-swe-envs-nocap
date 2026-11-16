# Issue

**Title:** build(deps): bump actions/download-artifact from 4 to 8

## Description

Bumps [actions/download-artifact](https://github.com/actions/download-artifact) from 4 to 8.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/download-artifact/releases">actions/download-artifact's releases</a>.</em></p>
<blockquote>
<h2>v8.0.0</h2>
<h2>v8 - What's new</h2>
<h3>Direct downloads</h3>
<p>To support direct uploads in <code>actions/upload-artifact</code>, the action will no longer attempt to unzip all downloaded files. Instead, the action checks the <code>Content-Type</code> header ahead of unzipping and skips non-zipped files. Callers wishing to download a zipped file as-is can also set the new <code>skip-decompress</code> parameter to <code>false</code>.</p>
<h3>Enforced checks (breaking)</h3>
<p>A previous release introduced digest checks on the download. If a download hash didn't match the expected hash from the server, the action would log a warning. Callers can now configure the behavior on mismatch with the <code>digest-mismatch</code> parameter. To be secure by default, we are now defaulting the behavior to <code>error</code> which will fail the workflow run.</p>
<h3>ESM</h3>
<p>To support new versions of the @actions/* packages, we've upgraded the package to ESM.</p>
<h2>What's Changed</h2>
<ul>
<li>Don't attempt to un-zip non-zipped downloads by <a href="https://github.com/danwkennedy"><code>@​danwkennedy</code></a> in <a href="">actions/download-artifact#460</a></li>
<li>Add a setting to specify what to do on hash mismatch and default it to <code>error</code> by <a href="https://github.com/danwkennedy"><code>@​danwkennedy</code></a> in <a href="">actions/download-artifact#461</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/download-artifact/compare/v7...v8.0.0">https://github.com/actions/download-artifact/compare/v7...v8.0.0</a></p>
<h2>v7.0.0</h2>
<h2>v7 - What's new</h2>
<blockquote>
<p>[!IMPORTANT]
actions/download-artifact@v7 now runs on Node.js 24 (<code>runs.using: node24</code>) and requires a minimum Actions Runner version of 2.327.1. If you are using self-hosted runners, ensure they are updated before upgrading.</p>
</blockquote>
<h3>Node.js 24</h3>
<p>This release updates the runtime to Node.js 24. v6 had preliminary support for Node 24, however this action was by default still running on Node.js 20. Now this action by default will run on Node.js 24.</p>
<h2>What's Changed</h2>
<ul>
<li>Update GHES guidance to include reference to Node 20 version by <a href="https://github.com/patrikpolyak"><code>@​patrikpolyak</code></a> in <a href="">actions/download-artifact#440</a></li>
<li>Download Artifact Node24 support by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/download-artifact#415</a></li>
<li>fix: update <code>@​actions/artifact</code> to fix Node.js 24 punycode deprecation by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/download-artifact#451</a></li>
<li>prepare release v7.0.0 for Node.js 24 support by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="">actions/download-artifact#452</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/patrikpolyak"><code>@​patrikpolyak</code></a> made their first contribution in <a href="">actions/download-artifact#440</a></li>
<li><a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> made their first contribution in <a href="">actions/download-artifact#415</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/download-artifact/compare/v6.0.0...v7.0.0">https://github.com/actions/download-artifact/compare/v6.0.0...v7.0.0</a></p>
<h2>v6.0.0</h2>
<h2>What's Changed</h2>
<p><strong>BREAKING CHANGE:</strong> this update supports Node <code>v24.x</code>. This is not a breaking change per-se but we're treating it as such.</p>
<ul>
<li>Update README for download-artifact v5 changes by <a href="https://github.com/yacaovsnc"><code>@​yacaovsnc</code></a> in <a href="">actions/download-artifact#417</a></li>
<li>Update README with artifact extraction details by <a href="https://github.com/yacaovsnc"><code>@​yacaovsnc</code></a> in <a href="">actions/download-artifact#424</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>70fc10c</code></a> Merge pull request <a href="">#461</a> from actions/danwkennedy/digest-mismatch-behavior</li>
<li><a href=""><code>f258da9</code></a> Add change docs</li>
<li><a href=""><code>ccc058e</code></a> Fix linting issues</li>
<li><a href=""><code>bd7976b</code></a> Add a setting to specify what to do on hash mismatch and default it to <code>error</code></li>
<li><a href=""><code>ac21fcf</code></a> Merge pull request <a href="">#460</a> from actions/danwkennedy/download-no-unzip</li>
<li><a href=""><code>15999bf</code></a> Add note about package bumps</li>
<li><a href=""><code>974686e</code></a> Bump the version to <code>v8</code> and add release notes</li>
<li><a href=""><code>fbe48b1</code></a> Update test names to make it clearer what they do</li>
<li><a href=""><code>96bf374</code></a> One more test fix</li>
<li><a href=""><code>b8c4819</code></a> Fix skip decompress test</li>
<li>Additional commits viewable in <a href="https://github.com/actions/download-artifact/compare/v4...v8">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=actions/download-artifact&package-manager=github_actions&previous-version=4&new-version=8)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7c28d9c89ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.