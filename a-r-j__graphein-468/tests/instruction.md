# Issue

**Title:** Bump graphql-core from 3.2.11 to 3.2.12

## Description

Bumps [graphql-core](https://github.com/graphql-python/graphql-core) from 3.2.11 to 3.2.12.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/graphql-python/graphql-core/releases">graphql-core's releases</a>.</em></p>
<blockquote>
<h2>v3.2.12</h2>
<p>Patch-release GraphQL-core v3.2.12, based on GraphQL.js v16.14.2.</p>
<p>This patch-release supports Python 3.7 to 3.14.</p>
<p><strong>This is a security release.</strong> It fixes two denial-of-service vulnerabilities in the validator and the parser. Upgrading is recommended for all users.</p>
<p>Security fixes:</p>
<ul>
<li><strong>CVE-2026-75507</strong> (<a href="https://github.com/graphql-python/graphql-core/security/advisories/GHSA-vj8h-fx38-h3vc">GHSA-vj8h-fx38-h3vc</a>, High) — the <code>OverlappingFieldsCanBeMerged</code> validation rule could be driven into quadratic and worse running time by a small, highly compressible query using repeated inline fragments, occupying a worker for minutes of CPU during validation, before any resolver runs. Validation now enforces a per-document comparison budget and aborts with a <code>GraphQLError</code> once it is exhausted.</li>
<li><strong>CVE-2026-75508</strong> (<a href="https://github.com/graphql-python/graphql-core/security/advisories/GHSA-r77w-qph3-7vf8">GHSA-r77w-qph3-7vf8</a>, High) — comment tokens were allocated and retained but not counted toward the parser's <code>max_tokens</code> limit, so a comment-padded document could bypass the limit while allocating one token object per comment. <code>max_tokens</code> now counts every token the parser consumes, including skipped comments.</li>
</ul>
<p>Please note the two behaviour changes this implies:</p>
<ul>
<li>A pathological query that previously validated — slowly — now produces a validation error. Realistic queries stay far below the limit, which defaults to 250,000 field comparisons and can be adjusted by assigning to <code>graphql.validation.rules.overlapping_fields_can_be_merged.MAX_FIELD_COMPARISONS</code>.</li>
<li>Comments now count toward <code>max_tokens</code>, so a comment-heavy document that was previously accepted may now be rejected. If you parse documents with substantial comments and set <code>max_tokens</code>, you may need to raise the limit. The <code>token_count</code> of a parsed document now includes comments as well.</li>
</ul>
<p>Both limits complement, but do not replace, a request body-size limit applied to the decompressed request body in your web framework.</p>
<p>Other changes:</p>
<ul>
<li>Updated development dependencies and CI tooling.</li>
</ul>
<p>The security issues were reported by <a href="https://github.com/BZHunt"><code>@​BZHunt</code></a>, who also reviewed the fixes before release. In memory of ZaX, who was the driving force behind this discovery. The first one was also independently found and diagnosed by <a href="https://github.com/bcmyguest"><code>@​bcmyguest</code></a>.</p>
<p>Thanks to <a href="https://github.com/jkimbo"><code>@​jkimbo</code></a> for sponsoring this project.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>af6addb</code></a> Bump version</li>
<li><a href=""><code>ab7bfbc</code></a> Fix version bump configuration</li>
<li><a href=""><code>80ef435</code></a> fix: count comment tokens toward the parser max_tokens limit</li>
<li><a href=""><code>29c2753</code></a> fix: bound OverlappingFieldsCanBeMerged validation to prevent quadratic DoS</li>
<li><a href=""><code>090141f</code></a> Update dependencies</li>
<li>See full diff in <a href="https://github.com/graphql-python/graphql-core/compare/v3.2.11...v3.2.12">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=graphql-core&package-manager=uv&previous-version=3.2.11&new-version=3.2.12)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/a-r-j/graphein/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `daa34db931bc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.