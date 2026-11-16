# Issue

**Title:** chore(deps): bump pyjwt from 2.10.1 to 2.12.0 in /backend

## Description

Bumps [pyjwt](https://github.com/jpadilla/pyjwt) from 2.10.1 to 2.12.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jpadilla/pyjwt/releases">pyjwt's releases</a>.</em></p>
<blockquote>
<h2>2.12.0</h2>
<h2>Security</h2>
<ul>
<li>Validate the crit (Critical) Header Parameter defined in RFC 7515 §4.1.11. by <a href="https://github.com/dmbs335"><code>@​dmbs335</code></a> in <a href="https://github.com/jpadilla/pyjwt/security/advisories/GHSA-752w-5fwx-jx9f">GHSA-752w-5fwx-jx9f</a></li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1132</a></li>
<li>chore(docs): fix docs build by <a href="https://github.com/tamird"><code>@​tamird</code></a> in <a href="">jpadilla/pyjwt#1137</a></li>
<li>Annotate PyJWKSet.keys for pyright by <a href="https://github.com/tamird"><code>@​tamird</code></a> in <a href="">jpadilla/pyjwt#1134</a></li>
<li>fix: close HTTPError to prevent ResourceWarning on Python 3.14 by <a href="https://github.com/veeceey"><code>@​veeceey</code></a> in <a href="">jpadilla/pyjwt#1133</a></li>
<li>chore: remove superfluous constants by <a href="https://github.com/tamird"><code>@​tamird</code></a> in <a href="">jpadilla/pyjwt#1136</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1135</a></li>
<li>chore(tests): enable mypy by <a href="https://github.com/tamird"><code>@​tamird</code></a> in <a href="">jpadilla/pyjwt#1138</a></li>
<li>Bump actions/download-artifact from 7 to 8 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jpadilla/pyjwt#1142</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1141</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1145</a></li>
<li>fix: do not store reference to algorithms dict on PyJWK by <a href="https://github.com/akx"><code>@​akx</code></a> in <a href="">jpadilla/pyjwt#1143</a></li>
<li>Use PyJWK algorithm when encoding without explicit algorithm by <a href="https://github.com/jpadilla"><code>@​jpadilla</code></a> in <a href="">jpadilla/pyjwt#1148</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/tamird"><code>@​tamird</code></a> made their first contribution in <a href="">jpadilla/pyjwt#1137</a></li>
<li><a href="https://github.com/veeceey"><code>@​veeceey</code></a> made their first contribution in <a href="">jpadilla/pyjwt#1133</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/jpadilla/pyjwt/compare/2.11.0...2.12.0">https://github.com/jpadilla/pyjwt/compare/2.11.0...2.12.0</a></p>
<h2>2.11.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Fixed type error in comment by <a href="https://github.com/shuhaib-aot"><code>@​shuhaib-aot</code></a> in <a href="">jpadilla/pyjwt#1026</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1018</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1033</a></li>
<li>Make note of use of leeway with nbf by <a href="https://github.com/djw8605"><code>@​djw8605</code></a> in <a href="">jpadilla/pyjwt#1034</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1035</a></li>
<li>Fixes <a href="">#964</a>: Validate key against allowed types for Algorithm family by <a href="https://github.com/pachewise"><code>@​pachewise</code></a> in <a href="">jpadilla/pyjwt#985</a></li>
<li>Feat <a href="">#1024</a>: Add iterator for PyJWKSet by <a href="https://github.com/pachewise"><code>@​pachewise</code></a> in <a href="">jpadilla/pyjwt#1041</a></li>
<li>Fixes <a href="">#1039</a>: Add iss, issuer type checks by <a href="https://github.com/pachewise"><code>@​pachewise</code></a> in <a href="">jpadilla/pyjwt#1040</a></li>
<li>Fixes <a href="">#660</a>: Improve typing/logic for <code>options</code> in decode, decode_complete; Improve docs by <a href="https://github.com/pachewise"><code>@​pachewise</code></a> in <a href="">jpadilla/pyjwt#1045</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1042</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1052</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1053</a></li>
<li>Fix <a href="">#1022</a>: Map <code>algorithm=None</code> to &quot;none&quot; by <a href="https://github.com/qqii"><code>@​qqii</code></a> in <a href="">jpadilla/pyjwt#1056</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1055</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1058</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1060</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1061</a></li>
<li>Fixes <a href="">#1047</a>: Correct <code>PyJWKClient.get_signing_key_from_jwt</code> annotation  by <a href="https://github.com/khvn26"><code>@​khvn26</code></a> in <a href="">jpadilla/pyjwt#1048</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1062</a></li>
<li>Fixed doc string typo in _validate_jti() function <a href="">#1063</a> by <a href="https://github.com/kuldeepkhatke"><code>@​kuldeepkhatke</code></a> in <a href="">jpadilla/pyjwt#1064</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1065</a></li>
<li>Update SECURITY.md by <a href="https://github.com/auvipy"><code>@​auvipy</code></a> in <a href="">jpadilla/pyjwt#1057</a></li>
<li>Typing fix: use <code>float</code> instead of <code>int</code> for <code>lifespan</code> and <code>timeout</code> by <a href="https://github.com/nikitagashkov"><code>@​nikitagashkov</code></a> in <a href="">jpadilla/pyjwt#1068</a></li>
<li>[pre-commit.ci] pre-commit autoupdate by <a href="https://github.com/pre-commit-ci"><code>@​pre-commit-ci</code></a>[bot] in <a href="">jpadilla/pyjwt#1067</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/jpadilla/pyjwt/blob/master/CHANGELOG.rst">pyjwt's changelog</a>.</em></p>
<blockquote>
<h2><code>v2.12.0 &lt;https://github.com/jpadilla/pyjwt/compare/2.11.0...2.12.0&gt;</code>__</h2>
<p>Fixed</p>
<pre><code>
- Annotate PyJWKSet.keys for pyright by @tamird in ` &lt;
- Close ``HTTPError`` response to prevent ``ResourceWarning`` on Python 3.14 by @veeceey in ` &lt;
- Do not keep ``algorithms`` dict in PyJWK instances by @akx in ` &lt;
- Validate the crit (Critical) Header Parameter defined in RFC 7515 §4.1.11. by @dmbs335 in `GHSA-752w-5fwx-jx9f &lt;https://github.com/jpadilla/pyjwt/security/advisories/GHSA-752w-5fwx-jx9f&gt;`__
- Use PyJWK algorithm when encoding without explicit algorithm in ` &lt;
<p>Added
</code></pre></p>
<ul>
<li>Docs: Add <code>PyJWKClient</code> API reference and document the two-tier caching system (JWK Set cache and signing key LRU cache).</li>
</ul>
<h2><code>v2.11.0 &lt;https://github.com/jpadilla/pyjwt/compare/2.10.1...2.11.0&gt;</code>__</h2>
<p>Fixed</p>
<pre><code>
- Enforce ECDSA curve validation per RFC 7518 Section 3.4.
- Fix build system warnings by @kurtmckee in ` &lt;
- Validate key against allowed types for Algorithm family in ` &lt;
- Add iterator for JWKSet in ` &lt;
- Validate `iss` claim is a string during encoding and decoding by @pachewise in ` &lt;
- Improve typing/logic for `options` in decode, decode_complete by @pachewise in ` &lt;
- Declare float supported type for lifespan and timeout by @nikitagashkov in ` &lt;
- Fix ``SyntaxWarning``\s/``DeprecationWarning``\s caused by invalid escape sequences by @kurtmckee in ` &lt;
- Development: Build a shared wheel once to speed up test suite setup times by @kurtmckee in ` &lt;
- Development: Test type annotations across all supported Python versions,
  increase the strictness of the type checking, and remove the mypy pre-commit hook
  by @kurtmckee in ` &lt;
<p>Added
</code></pre></p>
<ul>
<li>Support Python 3.14, and test against PyPy 3.10 and 3.11 by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Development: Migrate to <code>build</code> to test package building in CI by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Development: Improve coverage config and eliminate unused test suite code by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Docs: Standardize CHANGELOG links to PRs by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Docs: Fix Read the Docs builds by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Docs: Add example of using leeway with nbf by <a href="https://github.com/djw8605"><code>@​djw8605</code></a> in <code> &lt;</code>__</li>
<li>Docs: Refactored docs with <code>autodoc</code>; added <code>PyJWS</code> and <code>jwt.algorithms</code> docs by <a href="https://github.com/pachewise"><code>@​pachewise</code></a> in <code> &lt;</code>__</li>
<li>Docs: Documentation improvements for &quot;sub&quot; and &quot;jti&quot; claims by <a href="https://github.com/cleder"><code>@​cleder</code></a> in <code> &lt;</code>__</li>
<li>Development: Add pyupgrade as a pre-commit hook by <a href="https://github.com/kurtmckee"><code>@​kurtmckee</code></a> in <code> &lt;</code>__</li>
<li>Add minimum key length validation for HMAC and RSA keys (CWE-326).
Warns by default via <code>InsecureKeyLengthWarning</code> when keys are below</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bd9700c</code></a> Use PyJWK algorithm when encoding without explicit algorithm (<a href="">#1148</a>)</li>
<li><a href=""><code>051ea34</code></a> Merge commit from fork</li>
<li><a href=""><code>1451d70</code></a> fix: do not store reference to algorithms dict on PyJWK (<a href="">#1143</a>)</li>
<li><a href=""><code>f3ba74c</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1145</a>)</li>
<li><a href=""><code>0318ffa</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1141</a>)</li>
<li><a href=""><code>a52753d</code></a> Bump actions/download-artifact from 7 to 8 (<a href="">#1142</a>)</li>
<li><a href=""><code>b85050f</code></a> chore(tests): enable mypy (<a href="">#1138</a>)</li>
<li><a href=""><code>1272b26</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#1135</a>)</li>
<li><a href=""><code>99a8728</code></a> chore: remove superfluous constants (<a href="">#1136</a>)</li>
<li><a href=""><code>412cb67</code></a> fix: close HTTPError to prevent ResourceWarning on Python 3.14 (<a href="">#1133</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/jpadilla/pyjwt/compare/2.10.1...2.12.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pyjwt&package-manager=uv&previous-version=2.10.1&new-version=2.12.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef0d092a4bfb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.