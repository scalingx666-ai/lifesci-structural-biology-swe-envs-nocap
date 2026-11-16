# Issue

**Title:** chore(deps): bump pygments from 2.19.2 to 2.20.0 in /backend

## Description

Bumps [pygments](https://github.com/pygments/pygments) from 2.19.2 to 2.20.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pygments/pygments/releases">pygments's releases</a>.</em></p>
<blockquote>
<h2>2.20.0</h2>
<ul>
<li>
<p>New lexers:</p>
<ul>
<li>Rell (<a href="">#2914</a>)</li>
</ul>
</li>
<li>
<p>Updated lexers:</p>
<ul>
<li>archetype: Fix catastrophic backtracking in GUID and ID patterns (<a href="">#3064</a>)</li>
<li>ASN.1: Recognize minus sign and fix range operator (<a href="">#3014</a>, <a href="">#3060</a>)</li>
<li>C++: Add C++26 keywords (<a href="">#2955</a>), add integer literal suffixes (<a href="">#2966</a>)</li>
<li>ComponentPascal: Fix <code>analyse_text</code> (<a href="">#3028</a>, <a href="">#3032</a>)</li>
<li>Coq renamed to Rocq (<a href="">#2883</a>, <a href="">#2908</a>)</li>
<li>Cython: Various improvements (<a href="">#2932</a>, <a href="">#2933</a>)</li>
<li>Debian control: Improve architecture parsing (<a href="">#3052</a>)</li>
<li>Devicetree: Add support for overlay/fragments (<a href="">#3021</a>), add bytestring support (<a href="">#3022</a>), fix catastrophic backtracking (<a href="">#3057</a>)</li>
<li>Fennel: Various improvements (<a href="">#2911</a>)</li>
<li>Haskell: Handle escape sequences in character literals (<a href="">#3069</a>, <a href="">#1795</a>)</li>
<li>Java: Add module keywords (<a href="">#2955</a>)</li>
<li>Lean4: Add operators <code>]'</code>, <code>]?</code>, <code>]!</code>  (<a href="">#2946</a>)</li>
<li>LESS: Support single-line comments (<a href="">#3005</a>)</li>
<li>LilyPond: Update to 2.25.29 (<a href="">#2974</a>)</li>
<li>LLVM: Support C-style comments (<a href="">#3023</a>, <a href="">#2978</a>)</li>
<li>Lua(u): Fix catastrophic backtracking (<a href="">#3047</a>)</li>
<li>Macaulay2: Update to 1.25.05 (<a href="">#2893</a>), 1.25.11 (<a href="">#2988</a>)</li>
<li>Mathematica: Various improvements (<a href="">#2957</a>)</li>
<li>meson: Add additional operators (<a href="">#2919</a>)</li>
<li>MySQL: Update keywords (<a href="">#2970</a>)</li>
<li>org-Mode: Support both schedule and deadline (<a href="">#2899</a>)</li>
<li>PHP: Add <code>__PROPERTY__</code> magic constant (<a href="">#2924</a>), add reserved keywords (<a href="">#3002</a>)</li>
<li>PostgreSQL: Add more keywords (<a href="">#2985</a>)</li>
<li>protobuf: Fix namespace tokenization (<a href="">#2929</a>)</li>
<li>Python: Add <code>t</code>-string support (<a href="">#2973</a>, <a href="">#3009</a>, <a href="">#3010</a>)</li>
<li>Tablegen: Fix infinite loop (<a href="">#2972</a>, <a href="">#2940</a>)</li>
<li>Tera Term macro: Add commands introduced in v5.3 through v5.6 (<a href="">#2951</a>)</li>
<li>TOML: Support TOML 1.1.0 (<a href="">#3026</a>, <a href="">#3027</a>)</li>
<li>Turtle: Allow empty comment lines (<a href="">#2980</a>)</li>
<li>XML: Added <code>.xbrl</code> as file ending (<a href="">#2890</a>, <a href="">#2891</a>)</li>
</ul>
</li>
<li>
<p>Drop Python 3.8, and add Python 3.14 as a supported version (<a href="">#2987</a>, <a href="">#3012</a>)</p>
</li>
<li>
<p>Various improvements to <code>autopygmentize</code> (<a href="">#2894</a>)</p>
</li>
<li>
<p>Update <code>onedark</code> style to support more token types (<a href="">#2977</a>)</p>
</li>
<li>
<p>Update <code>rtt</code> style to support more token types (<a href="">#2895</a>)</p>
</li>
<li>
<p>Cache entry points to improve performance (<a href="">#2979</a>)</p>
</li>
<li>
<p>Fix <code>xterm-256</code> color table (<a href="">#3043</a>)</p>
</li>
<li>
<p>Fix <code>kwargs</code> dictionary getting mutated on each call (<a href="">#3044</a>)</p>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pygments/pygments/blob/master/CHANGES">pygments's changelog</a>.</em></p>
<blockquote>
<h2>Version 2.20.0</h2>
<p>(released March 29th, 2026)</p>
<ul>
<li>
<p>New lexers:</p>
<ul>
<li>Rell (<a href="">#2914</a>)</li>
</ul>
</li>
<li>
<p>Updated lexers:</p>
<ul>
<li>archetype: Fix catastrophic backtracking in GUID and ID patterns (<a href="">#3064</a>)</li>
<li>ASN.1: Recognize minus sign and fix range operator (<a href="">#3014</a>, <a href="">#3060</a>)</li>
<li>C++: Add C++26 keywords (<a href="">#2955</a>), add integer literal suffixes (<a href="">#2966</a>)</li>
<li>ComponentPascal: Fix <code>analyse_text</code> (<a href="">#3028</a>, <a href="">#3032</a>)</li>
<li>Coq renamed to Rocq (<a href="">#2883</a>, <a href="">#2908</a>)</li>
<li>Cython: Various improvements (<a href="">#2932</a>, <a href="">#2933</a>)</li>
<li>Debian control: Improve architecture parsing (<a href="">#3052</a>)</li>
<li>Devicetree: Add support for overlay/fragments (<a href="">#3021</a>), add bytestring support (<a href="">#3022</a>), fix catastrophic backtracking (<a href="">#3057</a>)</li>
<li>Fennel: Various improvements (<a href="">#2911</a>)</li>
<li>Haskell: Handle escape sequences in character literals (<a href="">#3069</a>, <a href="">#1795</a>)</li>
<li>Java: Add module keywords (<a href="">#2955</a>)</li>
<li>Lean4: Add operators <code>]'</code>, <code>]?</code>, <code>]!</code>  (<a href="">#2946</a>)</li>
<li>LESS: Support single-line comments (<a href="">#3005</a>)</li>
<li>LilyPond: Update to 2.25.29 (<a href="">#2974</a>)</li>
<li>LLVM: Support C-style comments (<a href="">#3023</a>, <a href="">#2978</a>)</li>
<li>Lua(u): Fix catastrophic backtracking (<a href="">#3047</a>)</li>
<li>Macaulay2: Update to 1.25.05 (<a href="">#2893</a>), 1.25.11 (<a href="">#2988</a>)</li>
<li>Mathematica: Various improvements (<a href="">#2957</a>)</li>
<li>meson: Add additional operators (<a href="">#2919</a>)</li>
<li>MySQL: Update keywords (<a href="">#2970</a>)</li>
<li>org-Mode: Support both schedule and deadline (<a href="">#2899</a>)</li>
<li>PHP: Add <code>__PROPERTY__</code> magic constant (<a href="">#2924</a>), add reserved keywords (<a href="">#3002</a>)</li>
<li>PostgreSQL: Add more keywords (<a href="">#2985</a>)</li>
<li>protobuf: Fix namespace tokenization (<a href="">#2929</a>)</li>
<li>Python: Add <code>t</code>-string support (<a href="">#2973</a>, <a href="">#3009</a>, <a href="">#3010</a>)</li>
<li>Tablegen: Fix infinite loop (<a href="">#2972</a>, <a href="">#2940</a>)</li>
<li>Tera Term macro: Add commands introduced in v5.3 through v5.6 (<a href="">#2951</a>)</li>
<li>TOML: Support TOML 1.1.0 (<a href="">#3026</a>, <a href="">#3027</a>)</li>
<li>Turtle: Allow empty comment lines (<a href="">#2980</a>)</li>
<li>XML: Added <code>.xbrl</code> as file ending (<a href="">#2890</a>, <a href="">#2891</a>)</li>
</ul>
</li>
<li>
<p>Drop Python 3.8, and add Python 3.14 as a supported version (<a href="">#2987</a>, <a href="">#3012</a>)</p>
</li>
<li>
<p>Various improvements to <code>autopygmentize</code> (<a href="">#2894</a>)</p>
</li>
<li>
<p>Update <code>onedark</code> style to support more token types (<a href="">#2977</a>)</p>
</li>
<li>
<p>Update <code>rtt</code> style to support more token types (<a href="">#2895</a>)</p>
</li>
<li>
<p>Cache entry points to improve performance (<a href="">#2979</a>)</p>
</li>
<li>
<p>Fix <code>xterm-256</code> color table (<a href="">#3043</a>)</p>
</li>
<li>
<p>Fix <code>kwargs</code> dictionary getting mutated on each call (<a href="">#3044</a>)</p>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>708197d</code></a> Fix underline length.</li>
<li><a href=""><code>1d4538a</code></a> Prepare 2.20 release.</li>
<li><a href=""><code>2ceaee4</code></a> Update CHANGES.</li>
<li><a href=""><code>e3a3c54</code></a> Fix Haskell lexer: handle escape sequences in character literals (<a href="">#3069</a>)</li>
<li><a href=""><code>d7c3453</code></a> Merge pull request <a href="">#3071</a> from pygments/harden-html-formatter</li>
<li><a href=""><code>0f97e7c</code></a> Harden the HTML formatter against CSS.</li>
<li><a href=""><code>9f981b2</code></a> Update CHANGES.</li>
<li><a href=""><code>1d88915</code></a> Update CHANGES.</li>
<li><a href=""><code>c3d93ad</code></a> Fix ASN.1 lexer: recognize minus sign and fix range operator (<a href="">#3060</a>)</li>
<li><a href=""><code>4f06bcf</code></a> fix bad behaving backtracking regex in CommonLispLexer</li>
<li>Additional commits viewable in <a href="https://github.com/pygments/pygments/compare/2.19.2...2.20.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pygments&package-manager=uv&previous-version=2.19.2&new-version=2.20.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.