# Issue

**Title:** Improve CLI

## Description

Based on top of PR #81.

This switches to a single binary and uses clap for a nicer command line interface.
It also adds support for a new list-playlists command that i implemented while debugging 

```
$ cargo run -- --help
Library for parsing Pioneer Rekordbox device exports

Usage: rekordcrate <COMMAND>

Commands:
  list-playlists  List the playlist tree from a Pioneer Database (`.PDB`) file
  dump-anlz       Parse and dump a Rekordbox Analysis (`ANLZXXXX.DAT`) file
  dump-pdb        Parse and dump a Pioneer Database (`.PDB`) file
  dump-setting    Parse and dump a Pioneer Settings (`*SETTING.DAT`) file
  help            Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help information
  
$ cargo run -- list-playlists export.pdb  | head -n 10
🗀 15.07.22
    🗎 riot code
🗀 jaki_21_05_22
    🗎 jaki_melow
    🗎 jaki2
    🗎 jaki
🗀 18.05.22
    🗎 plaid - dial p
    🗎 otherstuff
    🗎 wettrax
  ```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `111d92215607`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.