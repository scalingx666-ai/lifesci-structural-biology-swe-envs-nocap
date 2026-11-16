# Issue

**Title:** chore(deps): bump pydantic-settings from 2.12.0 to 2.14.2 in /backend

## Description

Bumps [pydantic-settings](https://github.com/pydantic/pydantic-settings) from 2.12.0 to 2.14.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pydantic/pydantic-settings/releases">pydantic-settings's releases</a>.</em></p>
<blockquote>
<h2>v2.14.2</h2>
<h2>What's Changed</h2>
<p>This is a security patch release.</p>
<ul>
<li>Prevent <code>NestedSecretsSettingsSource</code> from following symlinks outside <code>secrets_dir</code> by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#889</a></li>
<li>Prepare release 2.14.2 by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#890</a></li>
</ul>
<h3>Security</h3>
<p>Fixes <a href="https://github.com/pydantic/pydantic-settings/security/advisories/GHSA-4xgf-cpjx-pc3j">GHSA-4xgf-cpjx-pc3j</a>: <code>NestedSecretsSettingsSource</code> with <code>secrets_nested_subdir=True</code> could follow a symbolic link inside <code>secrets_dir</code> pointing outside it, reading out-of-tree files into settings values and bypassing the <code>secrets_dir_max_size</code> cap. Affected versions: <code>&gt;= 2.12.0, &lt; 2.14.2</code>.</p>
<p><strong>Full Changelog</strong>: <a href="https://github.com/pydantic/pydantic-settings/compare/v2.14.1...v2.14.2">https://github.com/pydantic/pydantic-settings/compare/v2.14.1...v2.14.2</a></p>
<h2>v2.14.1</h2>
<h2>What's Changed</h2>
<ul>
<li>Bump the python-packages group with 4 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#850</a></li>
<li>Bump the python-packages group with 5 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#854</a></li>
<li>Bump the github-actions group with 3 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#853</a></li>
<li>Bump the python-packages group with 2 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#856</a></li>
<li>Fix field named <code>cls</code> conflicting with classmethod parameter by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#858</a></li>
<li>Prepare release 2.14.1 by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#859</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/pydantic/pydantic-settings/compare/v2.14.0...v2.14.1">https://github.com/pydantic/pydantic-settings/compare/v2.14.0...v2.14.1</a></p>
<h2>v2.14.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Fix parsing env vars into Optional Strict types by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#792</a></li>
<li>Fix RecursionError with mutually recursive models in CLI by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#794</a></li>
<li>Fix env_file from model_config ignored in CliApp.run() (<a href="">#795</a>) by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#796</a></li>
<li>Update dependencies by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#798</a></li>
<li>Add Dependabot configuration by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#801</a></li>
<li>Bump samuelcolvin/check-python-version from 4.1 to 5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#802</a></li>
<li>Bump actions/upload-artifact from 4 to 7 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#803</a></li>
<li>Bump actions/checkout from 4 to 6 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#804</a></li>
<li>Bump astral-sh/setup-uv from 5 to 7 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#805</a></li>
<li>Bump actions/setup-python from 5 to 6 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#806</a></li>
<li>Ignore chardet and group GitHub Actions in Dependabot by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#808</a></li>
<li>Bump actions/download-artifact from 4 to 8 in the github-actions group by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#809</a></li>
<li>Bump the python-packages group with 2 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#810</a></li>
<li>Support reading .env files from FIFOs (e.g. 1Password Environments) by <a href="https://github.com/JacobHayes"><code>@​JacobHayes</code></a> in <a href="">pydantic/pydantic-settings#776</a></li>
<li>Fix AliasChoices ignored when changing provider priority by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#813</a></li>
<li>fix: resolve KeyError in run_subcommand for underscore field names by <a href="https://github.com/bradykieffer"><code>@​bradykieffer</code></a> in <a href="">pydantic/pydantic-settings#799</a></li>
<li>Bump the python-packages group with 3 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#814</a></li>
<li>Fix <code>Literal[numeric Enum]</code> coercion for CLI and env vars by <a href="https://github.com/m9810223"><code>@​m9810223</code></a> in <a href="">pydantic/pydantic-settings#811</a></li>
<li>Fix nested discriminated unions not discovered by env/CLI providers by <a href="https://github.com/hramezani"><code>@​hramezani</code></a> in <a href="">pydantic/pydantic-settings#816</a></li>
<li>Bump the python-packages group with 3 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#820</a></li>
<li>CLI ensure env nested max split internally. by <a href="https://github.com/kschwab"><code>@​kschwab</code></a> in <a href="">pydantic/pydantic-settings#821</a></li>
<li>Bump the python-packages group with 4 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">pydantic/pydantic-settings#824</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d703bd7</code></a> Prepare release 2.14.2 (<a href="">#890</a>)</li>
<li><a href=""><code>e95c30b</code></a> Prepare release 2.14.1 (<a href="">#859</a>)</li>
<li><a href=""><code>0c87345</code></a> Fix field named <code>cls</code> conflicting with classmethod parameter (<a href="">#858</a>)</li>
<li><a href=""><code>7bd0072</code></a> Bump the python-packages group with 2 updates (<a href="">#856</a>)</li>
<li><a href=""><code>b03e573</code></a> Bump the github-actions group with 3 updates (<a href="">#853</a>)</li>
<li><a href=""><code>eaa3b43</code></a> Bump the python-packages group with 5 updates (<a href="">#854</a>)</li>
<li><a href=""><code>9f95615</code></a> Bump the python-packages group with 4 updates (<a href="">#850</a>)</li>
<li><a href=""><code>8916bee</code></a> Prepare release 2.14.0 (<a href="">#848</a>)</li>
<li><a href=""><code>39e551c</code></a> Fix CLI descriptions lost under <code>python -OO</code> by falling back to `json_schema_...</li>
<li><a href=""><code>9ed7f48</code></a> Bump the python-packages group with 4 updates (<a href="">#847</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pydantic/pydantic-settings/compare/v2.12.0...v2.14.2">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2c5c9a525d2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.