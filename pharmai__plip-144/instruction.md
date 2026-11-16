# Issue

**Title:** Updates ImageMagick to version 7 and makes its use platform independent

## Description

The code for cropping pictures was tailored to unix systems only, now it should run on all platforms.
Code is also adapted to work with the latest ImageMagick (major changes were introduced with ImageMagick 7, ImageMagick 6 is legacy now).

Details: In the past, "convert" needed to be replaced with "magick convert" to work on windows. Now only "magick" is used on both systems (porting guide: https://imagemagick.org/script/porting.php).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `40671fd70dc1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.