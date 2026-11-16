# Issue

**Title:** JSON output support for dump commands

## Description

when using the `dump-*` commands to inspect files, i found the `Debug` trait output a bit difficult to work with, so this adds JSON support to make it easier to read & inspect with tools like `jq`.

this is a bit opinionated in serializing byte slices as hex strings rather then arrays of `Number`, but i think this makes the output significantly easier to read & browse though.

some manual implementations of `Serialize`, like for `WaveformPreviewColumn`, are because the default serialization resulted in a hard to read format.

as an example, a settings dump in json format:

```json
{
  "brand": "PIONEER",
  "software": "rekordbox",
  "version": "0.001",
  "data": {
    "MySetting": {
      "unknown1": "0x7856341202000000",
      "on_air_display": "On",
      "lcd_brightness": "Two",
      "quantize": "On",
      "auto_cue_level": "Memory",
      "language": "English",
      "unknown2": 1,
      "jog_ring_brightness": "Bright",
      "jog_ring_indicator": "On",
      "slip_flashing": "On",
      "unknown3": "0x010101",
      "disc_slot_illumination": "Bright",
      "eject_lock": "Unlock",
      "sync": "Off",
      "play_mode": "Continue",
      "quantize_beat_value": "FullBeat",
      "hotcue_autoload": "On",
      "hotcue_color": "Off",
      "unknown4": 0,
      "needle_lock": "Lock",
      "unknown5": 0,
      "time_mode": "Remain",
      "jog_mode": "Vinyl",
      "auto_cue": "Off",
      "master_tempo": "On",
      "tempo_range": "TenPercent",
      "phase_meter": "Type2",
      "unknown6": 0
    }
  }
}
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e8574896b099`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.