# Issue

**Title:** Bump tj-actions/changed-files from 45 to 46

## Description

Bumps [tj-actions/changed-files](https://github.com/tj-actions/changed-files) from 45 to 46.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tj-actions/changed-files/releases">tj-actions/changed-files's releases</a>.</em></p>
<blockquote>
<h2>v46</h2>
<blockquote>
<p>[!WARNING]<br />
<strong>Security Alert:</strong> A critical security issue was identified in this action due to a compromised commit: <a href="">0e58ed8671d6b60d0890c21b07f8835ace038e67</a>.</p>
<p>This commit has been <strong>removed</strong> from all tags and branches, and necessary measures have been implemented to prevent similar issues in the future.</p>
<h4><strong>Action Required:</strong></h4>
<ul>
<li><strong>Review your workflows executed between March 14 and March 15.</strong> If you notice unexpected output under the <code>changed-files</code> section, decode  it using the following command:  <code>echo 'xxx' | base64 -d | base64 -d</code><br />
If the output contains sensitive information (e.g., tokens or secrets), <strong>revoke and rotate those secrets immediately</strong>.</li>
<li><strong>If your workflows reference this commit directly by its SHA</strong>, you must update them immediately to avoid using the compromised version.</li>
<li><strong>If you are using tagged versions</strong> (e.g., <code>v35</code>, <code>v44.5.1</code>), no action is required as these tags have been updated and are now safe to use.</li>
</ul>
<p>Additionally, as a precaution, we recommend rotating any secrets that may have been exposed during this timeframe to ensure the continued security of your workflows.</p>
</blockquote>
<h1>Changes in v46.0.1</h1>
<h2>What's Changed</h2>
<ul>
<li>update: sync-release-version.yml to use signed commits by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2472</a></li>
<li>Updated README.md by <a href="https://github.com/github-actions"><code>@​github-actions</code></a> in <a href="">tj-actions/changed-files#2473</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tj-actions/changed-files/compare/v46...v46.0.1">https://github.com/tj-actions/changed-files/compare/v46...v46.0.1</a></p>
<hr />
<h1>Changes in v46.0.0</h1>
<h2>What's Changed</h2>
<ul>
<li>docs: update docs to highlight security issues by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2465</a></li>
<li>fix: update github workflow update-readme.yml by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2466</a></li>
<li>fix: update permission in update-readme.yml workflow by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2467</a></li>
<li>fix: update update-readme.yml to sign-commits by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2468</a></li>
<li>Updated README.md by <a href="https://github.com/github-actions"><code>@​github-actions</code></a> in <a href="">tj-actions/changed-files#2469</a></li>
<li>update: sync-release-version.yml by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2471</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/github-actions"><code>@​github-actions</code></a> made their first contribution in <a href="">tj-actions/changed-files#2469</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tj-actions/changed-files/compare/v45.0.5...v46.0.0">https://github.com/tj-actions/changed-files/compare/v45.0.5...v46.0.0</a></p>
<h2>What's Changed</h2>
<ul>
<li>docs: update docs to highlight security issues by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2465</a></li>
<li>fix: update github workflow update-readme.yml by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2466</a></li>
<li>fix: update permission in update-readme.yml workflow by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2467</a></li>
<li>fix: update update-readme.yml to sign-commits by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2468</a></li>
<li>Updated README.md by <a href="https://github.com/github-actions"><code>@​github-actions</code></a> in <a href="">tj-actions/changed-files#2469</a></li>
<li>update: sync-release-version.yml by <a href="https://github.com/jackton1"><code>@​jackton1</code></a> in <a href="">tj-actions/changed-files#2471</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/tj-actions/changed-files/compare/v45.0.5...v46.0.0">https://github.com/tj-actions/changed-files/compare/v45.0.5...v46.0.0</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tj-actions/changed-files/blob/main/HISTORY.md">tj-actions/changed-files's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h1><a href="https://github.com/tj-actions/changed-files/compare/v46.0.0...v46.0.1">46.0.1</a> - (2025-03-16)</h1>
<h2><!-- raw HTML omitted -->🔄 Update</h2>
<ul>
<li>Updated README.md (<a href="">#2473</a>)</li>
</ul>
<p>Co-authored-by: github-actions[bot] <!-- raw HTML omitted --> (<a href="">2f7c5bf</a>)  - (github-actions[bot])</p>
<ul>
<li>Sync-release-version.yml to use signed commits (<a href="">#2472</a>) (<a href="">4189ec6</a>)  - (Tonye Jack)</li>
</ul>
<h1><a href="https://github.com/tj-actions/changed-files/compare/v45.0.9...v46.0.0">46.0.0</a> - (2025-03-16)</h1>
<h2><!-- raw HTML omitted -->🐛 Bug Fixes</h2>
<ul>
<li>Update update-readme.yml to sign-commits (<a href="">#2468</a>) (<a href="">0f1ffe6</a>)  - (Tonye Jack)</li>
<li>Update permission in update-readme.yml workflow (<a href="">#2467</a>) (<a href="">ddef03e</a>)  - (Tonye Jack)</li>
<li>Update github workflow update-readme.yml (<a href="">#2466</a>) (<a href="">9c2df0d</a>)  - (Tonye Jack)</li>
</ul>
<h2><!-- raw HTML omitted -->➖ Remove</h2>
<ul>
<li>Deleted renovate.json (<a href="">e37e952</a>)  - (Tonye Jack)</li>
</ul>
<h2><!-- raw HTML omitted -->🔄 Update</h2>
<ul>
<li>Sync-release-version.yml (<a href="">#2471</a>) (<a href="">4cd184a</a>)  - (Tonye Jack)</li>
<li>Updated README.md (<a href="">#2469</a>)</li>
</ul>
<p>Co-authored-by: github-actions[bot] <!-- raw HTML omitted --> (<a href="">5cbf220</a>)  - (github-actions[bot])</p>
<h2><!-- raw HTML omitted -->📚 Documentation</h2>
<ul>
<li>Update docs to highlight security issues (<a href="">#2465</a>) (<a href="">6525332</a>)  - (Tonye Jack)</li>
</ul>
<h1><a href="https://github.com/tj-actions/changed-files/compare/v45.0.4...v45.0.9">45.0.9</a> - (2025-03-15)</h1>
<h2><!-- raw HTML omitted -->🐛 Bug Fixes</h2>
<ul>
<li><strong>deps:</strong> Update dependency <code>@​octokit/rest</code> to v21.1.1 (<a href="">#2435</a>) (<a href="">fb8dcda</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency <code>@​octokit/rest</code> to v21.1.0 (<a href="">#2394</a>) (<a href="">7b72c97</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency yaml to v2.7.0 (<a href="">#2383</a>) (<a href="">5f974c2</a>)  - (renovate[bot])</li>
</ul>
<h2><!-- raw HTML omitted -->⚙️ Miscellaneous Tasks</h2>
<ul>
<li><strong>deps:</strong> Lock file maintenance (<a href="">#2460</a>) (<a href="">9200e69</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency <code>@​types/node</code> to v22.13.10 (<a href="">#2459</a>) (<a href="">e650cfd</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency eslint-config-prettier to v10.1.1 (<a href="">#2458</a>) (<a href="">82af21f</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency eslint-config-prettier to v10.1.0 (<a href="">#2457</a>) (<a href="">82fa4a6</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update peter-evans/create-pull-request action to v7.0.8 (<a href="">#2455</a>) (<a href="">315505a</a>)  - (renovate[bot])</li>
<li><strong>deps:</strong> Update dependency <code>@​types/node</code> to v22.13.9 (<a href="">#2454</a>) (<a href="">c8e1cdb</a>)  - (renovate[bot])</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>2f7c5bf</code></a> Updated README.md (<a href="">#2473</a>)</li>
<li><a href=""><code>4189ec6</code></a> update: sync-release-version.yml to use signed commits (<a href="">#2472</a>)</li>
<li><a href=""><code>4cd184a</code></a> update: sync-release-version.yml (<a href="">#2471</a>)</li>
<li><a href=""><code>5cbf220</code></a> Updated README.md (<a href="">#2469</a>)</li>
<li><a href=""><code>0f1ffe6</code></a> fix: update update-readme.yml to sign-commits (<a href="">#2468</a>)</li>
<li><a href=""><code>ddef03e</code></a> fix: update permission in update-readme.yml workflow (<a href="">#2467</a>)</li>
<li><a href=""><code>9c2df0d</code></a> fix: update github workflow update-readme.yml (<a href="">#2466</a>)</li>
<li><a href=""><code>6525332</code></a> docs: update docs to highlight security issues (<a href="">#2465</a>)</li>
<li><a href=""><code>e37e952</code></a> Deleted renovate.json</li>
<li><a href=""><code>a284dc1</code></a> Upgraded to v45.0.8 (<a href="">#2462</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/tj-actions/changed-files/compare/v45...v46">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=tj-actions/changed-files&package-manager=github_actions&previous-version=45&new-version=46)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2811549f0a89`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.