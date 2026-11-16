#!/bin/bash
set -uxo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd /workspace
mkdir -p /logs/verifier
rm -f /logs/verifier/reward.txt /logs/verifier/reward.json /logs/verifier/reward-details.json
CAPTURE_DIR="$(mktemp -d)" || exit 1
trap 'rm -rf -- "$CAPTURE_DIR"' EXIT
if ! python3 -I "$SCRIPT_DIR/capture.py" /workspace 05681304651b1b29d7d887db169045ea3dd28fce > "$CAPTURE_DIR/predicted.patch"; then
  echo "0.0" > /logs/verifier/reward.txt
  printf '%s' '{"final_reward": 0.0, "evaluation_status": "graded", "eval_trustworthy": false, "capture_status": "error"}' > /logs/verifier/reward-details.json
  exit 0
fi
rm -f /logs/verifier/predicted.patch
cp -- "$CAPTURE_DIR/predicted.patch" /logs/verifier/predicted.patch
: 'START_VERIFY_OUTPUT'
if ! python3 -I "$SCRIPT_DIR/verifier.py" \
    "$SCRIPT_DIR/oracle.patch" \
    "$CAPTURE_DIR/predicted.patch" \
    "$SCRIPT_DIR/instruction.md"; then
  rm -f /logs/verifier/reward.txt /logs/verifier/reward.json
  printf '%s' '{"final_reward": null, "reward": null, "evaluation_status": "ungraded", "eval_trustworthy": false, "verifier_status": "error"}' > /logs/verifier/reward-details.json
fi
: 'END_VERIFY_OUTPUT'
exit 0
